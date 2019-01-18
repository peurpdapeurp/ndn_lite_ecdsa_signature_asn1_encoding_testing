/*
 * Copyright (C) Edward Lu
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 *
 * See AUTHORS.md for complete list of NDN IOT PKG authors and contributors.
 */

#include "basic-asn-encode-decode-tests.h"

#include "test-helpers.h"
#include "basic-asn-encode-decode-tests-def.h"

#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"
#include "../../ndn-lite/security/ndn-lite-sec-config.h"
#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

void _run_basic_asn_encode_decode_test(basic_asn_encode_decode_test_t *test);

bool run_basic_asn_encode_decode_tests() {
  memset(basic_asn_encode_decode_test_results, 0, sizeof(bool)*BASIC_ASN_ENCODE_DECODE_NUM_TESTS);
  for (int i = 0; i < BASIC_ASN_ENCODE_DECODE_NUM_TESTS; i++) {
    _run_basic_asn_encode_decode_test(&basic_asn_encode_decode_tests[i]);
  }
  return check_all_tests_passed(basic_asn_encode_decode_test_results, basic_asn_encode_decode_test_names,
                                BASIC_ASN_ENCODE_DECODE_NUM_TESTS);
}

void _run_basic_asn_encode_decode_test(basic_asn_encode_decode_test_t *test) {

  ndn_security_init();

  char *test_name = test->test_names[test->test_name_index];

  NRF_APP_LOG("Running basic asn encoding and decoding test, test name: %s\n", test_name);

  uint32_t asn1_encoded_sig_len = 0;
  int ret_val = 0;
  uint32_t decoded_sig_len = 0;

  bool test_sig_asn_encoding_size_probe = false;
  bool test_sig_asn_encoding_success = false;
  bool test_sig_asn_decoding_success = false;
  ret_val = ndn_asn1_probe_ecdsa_signature_encoding_size(test->sig, test->sig_len, &asn1_encoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    if (asn1_encoded_sig_len == test->sig_asn_encoded_probe_length_expected) {
      test_sig_asn_encoding_size_probe = true;
    } else {
      NRF_APP_LOG("Did not get expected value from ndn_asn1_probe_ecdsa_signature_encoding_size "
              "for %s. Expected %d, got %d\n",
          test_name, test->sig_asn_encoded_probe_length_expected,
          asn1_encoded_sig_len);
    }
  } else {
    NRF_APP_LOG("Probing of %s ASN1 encoding length failed, error code: %d\n", test_name, ret_val);
  }
  ret_val = ndn_asn1_encode_ecdsa_signature(test->sig, test->sig_len, test->sig_buf_len);
  if (ret_val == NDN_SUCCESS) {
    if (asn1_encoded_sig_len == test->sig_asn_encoded_expected_len &&
        memcmp(test->sig, test->sig_asn_encoded_expected, asn1_encoded_sig_len) == 0) {
      test_sig_asn_encoding_success = true;
    } else {
      NRF_APP_LOG("memcmp between %s after encoding and expected asn encoding didn't return 0, or\n"
              "asn encoded signature length did not match expected asn encoded signature length.\n",
          test_name);
      NRF_APP_LOG_HEX("Value of asn encoded signature:", test->sig, asn1_encoded_sig_len);
      NRF_APP_LOG_HEX("Expected value of asn encoded signature:",
          test->sig_asn_encoded_expected, test->sig_asn_encoded_expected_len);
      NRF_APP_LOG("Encoded signature length: %d, expected encoded signature length: %d\n",
          asn1_encoded_sig_len, test->sig_asn_encoded_expected_len);
    }
  } else {
    NRF_APP_LOG("ASN1 encoding of %s failed, error code: %d\n", test_name, ret_val);
  }
  ret_val = ndn_asn1_decode_ecdsa_signature(test->sig, asn1_encoded_sig_len, test->sig_decoded, test->sig_decoded_buf_len,
      &decoded_sig_len);
  if (ret_val == NDN_SUCCESS) {
    if (decoded_sig_len == test->sig_decoded_expected_len &&
        memcmp(test->sig_decoded, test->sig_decoded_expected, decoded_sig_len) == 0) {
      test_sig_asn_decoding_success = true;
    } else {
      NRF_APP_LOG("memcmp between decoded %s and expected decoded test signature didn't return 0, or\n"
              "decoded signature length and expected decoded signature length did not match.\n",
          test_name);
      NRF_APP_LOG_HEX("Value of decoded signature:", test->sig_decoded, decoded_sig_len);
      NRF_APP_LOG_HEX("Expected decoded signature:", test->sig_decoded_expected, test->sig_decoded_expected_len);
      NRF_APP_LOG("Decoded signature length: %d, expected decoded signature length: %d\n",
          decoded_sig_len, test->sig_decoded_expected_len);
    }
  } else {
    NRF_APP_LOG("ASN1 decoding of %s failed, error code: %d\n", test_name, ret_val);
  }
  if (test_sig_asn_encoding_size_probe &&
      test_sig_asn_encoding_success &&
      test_sig_asn_decoding_success) {
    *test->passed = true;
  }
}

