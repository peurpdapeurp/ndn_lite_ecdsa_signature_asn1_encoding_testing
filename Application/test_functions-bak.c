
#include "test_functions.h"

#include "print-helper.h"

bool check_all_tests_passed(bool *test_results, size_t test_results_len) {
  bool all_tests_passed;
  for (int i = 0; i < test_results_len; i++) {
    APP_LOG("Result of test %d: %d\n", i, test_results[i]);
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
                                    const uint8_t *test_ecc_pub_raw, uint32_t test_ecc_pub_raw_len,
                                    const uint8_t *test_ecc_prv_raw, uint32_t test_ecc_prv_raw_len,

                                    const uint8_t *test_data_content, uint32_t test_data_content_len,

                                    ndn_encoder_t *test_encoder, 
                                    uint8_t *test_encoder_buffer, uint32_t test_encoder_buffer_len,

                                    ndn_data_t *test_data, 
                                    const char *test_data_name_string, 
                                    uint32_t test_data_name_string_len,
                                    ndn_name_component_t *test_data_name_components,
                                    uint32_t test_data_name_components_len,

                                    ndn_name_t *test_producer_identity,
                                    const char *test_producer_identity_string,
                                    uint32_t test_producer_identity_string_len,
                                    ndn_name_component_t *test_producer_identity_name_components,
                                    uint32_t test_producer_identity_name_components_len,
                                    
                                    ndn_ecc_prv_t test_ecc_prv_key,
                                    ndn_ecc_pub_t test_ecc_pub_key,

                                    const uint32_t *test_arbitrary_key_id,    
                                                                    
                                    bool *test_passed) {

  ndn_security_init();

  int ret_val = -1;

  encoder_init(test_encoder, test_encoder_buffer, test_encoder_buffer_len);

  ndn_name_init(test_data->name, test_data_name_components, TEST_NUM_NAME_COMPONENTS);
  ndn_name_from_string(test_data->name, test_data_name_string, sizeof(test_data_name_string));
  ndn_metainfo_init(test_data->metainfo);
  ndn_data_set_content(test_data, test_data_content, test_data_content_len);

  ndn_name_init(test_producer_identity, test_producer_identity_name_components, 
                test_producer_identity_name_components_len);
  ndn_name_from_string(test_producer_identity, test_producer_identity_string,
                       test_producer_identity_string_len);

  ndn_ecc_prv_init(&test_ecc_prv_key, test_ecc_prv_raw, sizeof(test_ecc_prv_raw),
                   NDN_ECDSA_CURVE_SECP256R1, *test_arbitrary_key_id);

  ret_val = ndn_data_tlv_encode_ecdsa_sign(&test_encoder, &test_data,
      &test_producer_identity, &test_ecc_prv_key);
  if (ret_val != 0) {
    APP_LOG("Failed to encode / ecdsa sign test ndn data packet.\n");
    return;
  }

  ndn_ecc_pub_init(&test_ecc_pub_key, test_ecc_pub_raw, sizeof(test_ecc_pub_raw),
      NDN_ECDSA_CURVE_SECP256R1, test_arbitrary_key_id);

  APP_LOG_HEX("Encoded and ecdsa signed test data:", test_encoder.output_value, test_encoder.offset);

  ret_val = ndn_data_tlv_decode_ecdsa_verify(&test_data, test_encoder.output_value,
      test_encoder.offset, &test_ecc_pub_key);
  if (ret_val == 0) {
    *test_passed = true;
  } else {
    APP_LOG("Failed to verify signature of encoded data, error code: %d\n", ret_val);
  }
}