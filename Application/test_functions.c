
#include "test_functions.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/logger.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

void run_test(const char *sig_name,
              uint8_t *test_sig, uint32_t test_sig_len, uint32_t test_sig_buf_len,
              uint8_t *test_sig_decoded, uint32_t test_sig_decoded_buf_len,
              uint32_t test_sig_asn_encoded_probe_length_expected,
              uint8_t *test_sig_asn_encoded_expected, uint32_t test_sig_asn_encoded_expected_len,
              uint8_t *test_sig_decoded_expected, uint32_t test_sig_decoded_expected_len,
              bool *test_sig_passed) {

  uint32_t asn1_encoded_sig_len = 0; 
  int ret_val = 0;
  uint32_t decoded_sig_len = 0;

  bool test_sig_asn_encoding_size_probe = false;
  bool test_sig_asn_encoding_success = false;
  bool test_sig_asn_decoding_success = false;
  ret_val = ndn_asn1_probe_ecdsa_signature_encoding_size(test_sig, test_sig_len, &asn1_encoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    //APP_LOG("Probing of %s ASN1 encoding length success, length: %d\n", sig_name, asn1_encoded_sig_len);
    if (asn1_encoded_sig_len == test_sig_asn_encoded_probe_length_expected) {
      test_sig_asn_encoding_size_probe = true;
    }
    else {
      APP_LOG("Did not get expected value from ndn_asn1_probe_ecdsa_signature_encoding_size "
              "for %s. Expected %d, got %d\n", sig_name, test_sig_asn_encoded_probe_length_expected,
              asn1_encoded_sig_len);
    }
  }
  else {
    APP_LOG("Probing of %s ASN1 encoding length failed, error code: %d\n", sig_name, ret_val);
  }
  ret_val = ndn_asn1_encode_ecdsa_signature(test_sig, test_sig_len, test_sig_buf_len);
  if (ret_val == NDN_SUCCESS) {
    //APP_LOG("ASN1 encoding of %s success.\n", sig_name);
    //APP_LOG_HEX("Value of ASN1 encoded signature:", test_sig, asn1_encoded_sig_len);
    if (asn1_encoded_sig_len == test_sig_asn_encoded_expected_len &&
        memcmp(test_sig, test_sig_asn_encoded_expected, asn1_encoded_sig_len) == 0) {
      test_sig_asn_encoding_success = true;
    }
    else {
      APP_LOG("memcmp between %s after encoding and expected asn encoding didn't return 0, or\n"
              "asn encoded signature length did not match expected asn encoded signature length.\n", sig_name);
      APP_LOG_HEX("Value of asn encoded signature:", test_sig, asn1_encoded_sig_len);
      APP_LOG_HEX("Expected value of asn encoded signature:", 
                  test_sig_asn_encoded_expected, test_sig_asn_encoded_expected_len);
      APP_LOG("Encoded signature length: %d, expected encoded signature length: %d\n",
              asn1_encoded_sig_len, test_sig_asn_encoded_expected_len);
    }
  }
  else {
    APP_LOG("ASN1 encoding of %s failed, error code: %d\n", sig_name, ret_val);
  }
  ret_val = ndn_asn1_decode_ecdsa_signature(test_sig, asn1_encoded_sig_len, test_sig_decoded, test_sig_decoded_buf_len,
                                            &decoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    //APP_LOG("ASN1 decoding of %s success.\n", sig_name);
    //APP_LOG_HEX("Value of decoded signature:", test_sig_decoded, decoded_sig_len);
    if (decoded_sig_len == test_sig_decoded_expected_len &&
        memcmp(test_sig_decoded, test_sig_decoded_expected, decoded_sig_len) == 0) {
      test_sig_asn_decoding_success = true;
    }
    else {
      APP_LOG("memcmp between decoded %s and expected decoded test signature didn't return 0, or\n"
              "decoded signature length and expected decoded signature length did not match.\n", sig_name);
      APP_LOG_HEX("Value of decoded signature:", test_sig_decoded, decoded_sig_len);
      APP_LOG_HEX("Expected decoded signature:", test_sig_decoded_expected, test_sig_decoded_expected_len);
      APP_LOG("Decoded signature length: %d, expected decoded signature length: %d\n", 
              decoded_sig_len, test_sig_decoded_expected_len);
    }
  }
  else {
    APP_LOG("ASN1 decoding of %s failed, error code: %d\n", sig_name, ret_val);
  }
  if (test_sig_asn_encoding_size_probe &&
      test_sig_asn_encoding_success && 
      test_sig_asn_decoding_success) {
    *test_sig_passed = true;
  }

}