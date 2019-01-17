
#include "test_functions.h"

#include "print-helper.h"

#include "../../ndn-lite/encode/data.h"
#include "../../ndn-lite/encode/encoder.h"
#include "../../ndn-lite/encode/metainfo.h"
#include "../../ndn-lite/ndn-constants.h"
#include "../../ndn-lite/ndn-enums.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

static uint8_t test_data_content[10] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};

static const char test_data_name_string[] = "/test/data";
static const char test_producer_identity_string[] = "edward";
static const uint32_t test_arbitrary_key_id = 666;

static name_component_t test_data_name_components[TEST_NUM_NAME_COMPONENTS];
static name_component_t test_producer_identity_name_components[TEST_NUM_NAME_COMPONENTS];

static uint8_t test_encoder_buffer[TEST_ENCODER_BUFFER_LEN];

static ndn_encoder_t test_encoder;
static ndn_data_t test_data;
static ndn_name_t test_producer_identity;
static ndn_ecc_prv_t test_ecc_prv_key;
static ndn_ecc_pub_t test_ecc_pub_key;

void print_test_results(bool *test_results, size_t test_results_len) {
  for (int i = 0; i < test_results_len; i++) {
    APP_LOG("Value of test %d: %d\n", i, test_results[i]);
  }
}

bool check_all_tests_passed(bool *test_results, char **test_names, size_t test_results_len) {
  bool all_tests_passed = true;
  for (int i = 0; i < test_results_len; i++) {
    APP_LOG("Result of test %s: %d\n", test_names[i], test_results[i]);
    if (test_results[i] != true) {
      all_tests_passed = false;
    }
  }
  return all_tests_passed;
}

void run_basic_asn_encode_decode_test(const char *test_name,
    uint8_t *test_sig, uint32_t test_sig_len, uint32_t test_sig_buf_len,
    uint8_t *test_sig_decoded, uint32_t test_sig_decoded_buf_len,
    uint32_t test_sig_asn_encoded_probe_length_expected,
    uint8_t *test_sig_asn_encoded_expected, uint32_t test_sig_asn_encoded_expected_len,
    uint8_t *test_sig_decoded_expected, uint32_t test_sig_decoded_expected_len,
    bool *test_passed) {

  ndn_security_init();

  APP_LOG("Running basic asn encoding and decoding test, test name: %s\n", test_name);

  uint32_t asn1_encoded_sig_len = 0;
  int ret_val = 0;
  uint32_t decoded_sig_len = 0;

  bool test_sig_asn_encoding_size_probe = false;
  bool test_sig_asn_encoding_success = false;
  bool test_sig_asn_decoding_success = false;
  ret_val = ndn_asn1_probe_ecdsa_signature_encoding_size(test_sig, test_sig_len, &asn1_encoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    if (asn1_encoded_sig_len == test_sig_asn_encoded_probe_length_expected) {
      test_sig_asn_encoding_size_probe = true;
    } else {
      APP_LOG("Did not get expected value from ndn_asn1_probe_ecdsa_signature_encoding_size "
              "for %s. Expected %d, got %d\n",
          test_name, test_sig_asn_encoded_probe_length_expected,
          asn1_encoded_sig_len);
    }
  } else {
    APP_LOG("Probing of %s ASN1 encoding length failed, error code: %d\n", test_name, ret_val);
  }
  ret_val = ndn_asn1_encode_ecdsa_signature(test_sig, test_sig_len, test_sig_buf_len);
  if (ret_val == NDN_SUCCESS) {
    if (asn1_encoded_sig_len == test_sig_asn_encoded_expected_len &&
        memcmp(test_sig, test_sig_asn_encoded_expected, asn1_encoded_sig_len) == 0) {
      test_sig_asn_encoding_success = true;
    } else {
      APP_LOG("memcmp between %s after encoding and expected asn encoding didn't return 0, or\n"
              "asn encoded signature length did not match expected asn encoded signature length.\n",
          test_name);
      APP_LOG_HEX("Value of asn encoded signature:", test_sig, asn1_encoded_sig_len);
      APP_LOG_HEX("Expected value of asn encoded signature:",
          test_sig_asn_encoded_expected, test_sig_asn_encoded_expected_len);
      APP_LOG("Encoded signature length: %d, expected encoded signature length: %d\n",
          asn1_encoded_sig_len, test_sig_asn_encoded_expected_len);
    }
  } else {
    APP_LOG("ASN1 encoding of %s failed, error code: %d\n", test_name, ret_val);
  }
  ret_val = ndn_asn1_decode_ecdsa_signature(test_sig, asn1_encoded_sig_len, test_sig_decoded, test_sig_decoded_buf_len,
      &decoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    if (decoded_sig_len == test_sig_decoded_expected_len &&
        memcmp(test_sig_decoded, test_sig_decoded_expected, decoded_sig_len) == 0) {
      test_sig_asn_decoding_success = true;
    } else {
      APP_LOG("memcmp between decoded %s and expected decoded test signature didn't return 0, or\n"
              "decoded signature length and expected decoded signature length did not match.\n",
          test_name);
      APP_LOG_HEX("Value of decoded signature:", test_sig_decoded, decoded_sig_len);
      APP_LOG_HEX("Expected decoded signature:", test_sig_decoded_expected, test_sig_decoded_expected_len);
      APP_LOG("Decoded signature length: %d, expected decoded signature length: %d\n",
          decoded_sig_len, test_sig_decoded_expected_len);
    }
  } else {
    APP_LOG("ASN1 decoding of %s failed, error code: %d\n", test_name, ret_val);
  }
  if (test_sig_asn_encoding_size_probe &&
      test_sig_asn_encoding_success &&
      test_sig_asn_decoding_success) {
    *test_passed = true;
  }
}

void run_ecdsa_sig_sign_verify_test(const char *test_name,
    int ndn_ecdsa_curve,
    const uint8_t *test_ecc_pub_raw, uint32_t test_ecc_pub_raw_len,
    const uint8_t *test_ecc_prv_raw, uint32_t test_ecc_prv_raw_len,
    bool *test_passed) {

  ndn_security_init();

  APP_LOG("Running ecdsa signature signing and verification test, test name: %s\n", test_name);

  int ret_val = -1;

  encoder_init(&test_encoder, test_encoder_buffer, TEST_ENCODER_BUFFER_LEN);

  ndn_name_init(&test_data.name, test_data_name_components, TEST_NUM_NAME_COMPONENTS);
  ndn_name_from_string(&test_data.name, test_data_name_string, sizeof(test_data_name_string));
  ndn_metainfo_init(&test_data.metainfo);
  ndn_data_set_content(&test_data, test_data_content, sizeof(test_data_content));

  ndn_name_init(&test_producer_identity, test_producer_identity_name_components, TEST_NUM_NAME_COMPONENTS);
  ndn_name_from_string(&test_producer_identity, test_producer_identity_string,
      sizeof(test_producer_identity_string));

  ndn_ecc_prv_init(&test_ecc_prv_key, test_ecc_prv_raw, test_ecc_prv_raw_len,
      ndn_ecdsa_curve, test_arbitrary_key_id);

  ret_val = ndn_data_tlv_encode_ecdsa_sign(&test_encoder, &test_data,
      &test_producer_identity, &test_ecc_prv_key);
  if (ret_val != 0) {
    APP_LOG("Failed to encode / ecdsa sign test ndn data packet.\n");
    return;
  }

  ndn_ecc_pub_init(&test_ecc_pub_key, test_ecc_pub_raw, test_ecc_pub_raw_len,
      ndn_ecdsa_curve, test_arbitrary_key_id);

  ret_val = ndn_data_tlv_decode_ecdsa_verify(&test_data, test_encoder.output_value,
      test_encoder.offset, &test_ecc_pub_key);
  if (ret_val == 0) {
    *test_passed = true;
  } else {
    APP_LOG("Failed to verify signature of encoded data, error code: %d\n", ret_val);
  }
}