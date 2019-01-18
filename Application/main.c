
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "print-helper.h"

#include "basic-asn-encode-decode-tests.h"
#include "ecdsa-sig-sign-verify-tests.h"
#include "test_functions.h"

#include "../../ndn-lite/security/detail/default-backend/sec-lib/micro-ecc/uECC.h"
#include "../../ndn-lite/security/ndn-lite-sec-config.h"
#include "../../ndn-lite/security/ndn-lite-rng.h"
#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"
#include "../../ndn-lite/ndn-enums.h"

#define BASIC_ASN_ENCODE_DECODE_NUM_TESTS 8
#define ECDSA_SIGN_VERIFY_NUM_TESTS 8
#define TOTAL_NUM_TESTS (BASIC_ASN_ENCODE_DECODE_NUM_TESTS + ECDSA_SIGN_VERIFY_NUM_TESTS)

bool test_results[TOTAL_NUM_TESTS];

char *test_names[TOTAL_NUM_TESTS] = {
  "test_asn_encode_decode_1",
  "test_asn_encode_decode_2",
  "test_asn_encode_decode_3",
  "test_asn_encode_decode_4",
  "test_asn_encode_decode_5",
  "test_asn_encode_decode_6",
  "test_asn_encode_decode_7",
  "test_asn_encode_decode_8",
  "test_keypair_secp256r1_1",
  "test_keypair_secp256r1_2",
  "test_keypair_secp256r1_3",
  "test_keypair_secp256r1_4",
  "test_keypair_secp160r1_1",
  "test_keypair_secp160r1_2",
  "test_keypair_secp160r1_3",
  "test_keypair_secp160r1_4",
};

basic_asn_encode_decode_test_t basic_asn_encode_decode_tests[BASIC_ASN_ENCODE_DECODE_NUM_TESTS] = {
    {
      test_names,
      0,
      test_sig_1, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_1), 
      test_sig_1_decoded, sizeof(test_sig_1_decoded),
      test_sig_1_asn_encoded_probe_length_expected, 
      test_sig_1_asn_encoded_expected, sizeof(test_sig_1_asn_encoded_expected), 
      test_sig_1_decoded_expected, sizeof(test_sig_1_decoded_expected),
      &test_results[0]
    },
    {
      test_names, 
      1,
      test_sig_2, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_2), 
      test_sig_2_decoded, sizeof(test_sig_2_decoded),
      test_sig_2_asn_encoded_probe_length_expected, 
      test_sig_2_asn_encoded_expected, sizeof(test_sig_2_asn_encoded_expected), 
      test_sig_2_decoded_expected, sizeof(test_sig_2_decoded_expected),
      &test_results[1]
    },
    {
      test_names,
      2,
      test_sig_3, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_3), 
      test_sig_3_decoded, sizeof(test_sig_3_decoded),
      test_sig_3_asn_encoded_probe_length_expected, 
      test_sig_3_asn_encoded_expected, sizeof(test_sig_3_asn_encoded_expected), 
      test_sig_3_decoded_expected, sizeof(test_sig_3_decoded_expected),
      &test_results[2]
    },
    {
      test_names,
      3,
      test_sig_4, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_4), 
      test_sig_4_decoded, sizeof(test_sig_4_decoded),
      test_sig_4_asn_encoded_probe_length_expected, 
      test_sig_4_asn_encoded_expected, sizeof(test_sig_4_asn_encoded_expected), 
      test_sig_4_decoded_expected, sizeof(test_sig_4_decoded_expected),
      &test_results[3]
    },
    {
      test_names, 
      4,
      test_sig_5, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_5), 
      test_sig_5_decoded, sizeof(test_sig_5_decoded),
      test_sig_5_asn_encoded_probe_length_expected, 
      test_sig_5_asn_encoded_expected, sizeof(test_sig_5_asn_encoded_expected), 
      test_sig_5_decoded_expected, sizeof(test_sig_5_decoded_expected),
      &test_results[4]
    },
    {
      test_names,
      5,
      test_sig_6, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_6), 
      test_sig_6_decoded, sizeof(test_sig_6_decoded),
      test_sig_6_asn_encoded_probe_length_expected, 
      test_sig_6_asn_encoded_expected, sizeof(test_sig_6_asn_encoded_expected), 
      test_sig_6_decoded_expected, sizeof(test_sig_6_decoded_expected),
      &test_results[5]
    },
    {
      test_names, 
      6,
      test_sig_7, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_7), 
      test_sig_7_decoded, sizeof(test_sig_7_decoded),
      test_sig_7_asn_encoded_probe_length_expected, 
      test_sig_7_asn_encoded_expected, sizeof(test_sig_7_asn_encoded_expected), 
      test_sig_7_decoded_expected, sizeof(test_sig_7_decoded_expected),
      &test_results[6]
    },
    {
      test_names, 
      7,
      test_sig_8, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_8), 
      test_sig_8_decoded, sizeof(test_sig_8_decoded),
      test_sig_8_asn_encoded_probe_length_expected, 
      test_sig_8_asn_encoded_expected, sizeof(test_sig_8_asn_encoded_expected), 
      test_sig_8_decoded_expected, sizeof(test_sig_8_decoded_expected),
      &test_results[7]
    },
};

uint8_t test_hack_pub_ecc[100];
uint8_t test_hack_prv_ecc[100];

/**@brief Function for application main entry.
 */
int main(void) {

  // Initialize the log.
  log_init();

  printf("Entered main function of main_board1.c\n");

  memset(test_results, 0, sizeof(bool) * TOTAL_NUM_TESTS);

  //**//
  ndn_security_init();

  uECC_set_rng(ndn_rng);

  uECC_Curve curve = uECC_secp256r1();
  int pub_key_size = uECC_curve_public_key_size(curve);
  int pri_key_size = uECC_curve_private_key_size(curve);
  uECC_make_key(test_hack_pub_ecc, test_hack_prv_ecc, curve);

  NRF_APP_LOG_HEX("Public key generated (test hack secp256r1):", test_hack_pub_ecc, pub_key_size);
  NRF_APP_LOG_HEX("Private key generated (test hack secp256r1):", test_hack_prv_ecc, pri_key_size);

  //**//

  // Initialize timers.
  timers_init();

  // Initialize power management.
  power_management_init();

  // run basic_asn_encode_decode tests
  for (int i = 0; i < BASIC_ASN_ENCODE_DECODE_NUM_TESTS; i++) {
    run_basic_asn_encode_decode_test(&basic_asn_encode_decode_tests[i]);
  }

  run_ecdsa_sig_sign_verify_test(test_names[8],
                                 NDN_ECDSA_CURVE_SECP256R1,
                                 test_ecc_secp256r1_pub_raw_1, sizeof(test_ecc_secp256r1_pub_raw_1),
                                 test_ecc_secp256r1_prv_raw_1, sizeof(test_ecc_secp256r1_prv_raw_1),
                                 &test_results[8]);

  run_ecdsa_sig_sign_verify_test(test_names[9],
                                 NDN_ECDSA_CURVE_SECP256R1,
                                 test_ecc_secp256r1_pub_raw_2, sizeof(test_ecc_secp256r1_pub_raw_2),
                                 test_ecc_secp256r1_prv_raw_2, sizeof(test_ecc_secp256r1_prv_raw_2),
                                 &test_results[9]);

  run_ecdsa_sig_sign_verify_test(test_names[10],
                                 NDN_ECDSA_CURVE_SECP256R1,
                                 test_ecc_secp256r1_pub_raw_3, sizeof(test_ecc_secp256r1_pub_raw_3),
                                 test_ecc_secp256r1_prv_raw_3, sizeof(test_ecc_secp256r1_prv_raw_3),
                                 &test_results[10]);

  run_ecdsa_sig_sign_verify_test(test_names[11],
                                 NDN_ECDSA_CURVE_SECP256R1,
                                 test_ecc_secp256r1_pub_raw_4, sizeof(test_ecc_secp256r1_pub_raw_4),
                                 test_ecc_secp256r1_prv_raw_4, sizeof(test_ecc_secp256r1_prv_raw_4),
                                 &test_results[11]);

  run_ecdsa_sig_sign_verify_test(test_names[12],
                                 NDN_ECDSA_CURVE_SECP160R1,
                                 test_ecc_secp160r1_pub_raw_1, sizeof(test_ecc_secp160r1_pub_raw_1),
                                 test_ecc_secp160r1_prv_raw_1, sizeof(test_ecc_secp160r1_prv_raw_1),
                                 &test_results[12]);

  run_ecdsa_sig_sign_verify_test(test_names[13],
                                 NDN_ECDSA_CURVE_SECP160R1,
                                 test_ecc_secp160r1_pub_raw_2, sizeof(test_ecc_secp160r1_pub_raw_2),
                                 test_ecc_secp160r1_prv_raw_2, sizeof(test_ecc_secp160r1_prv_raw_2),
                                 &test_results[13]);

  run_ecdsa_sig_sign_verify_test(test_names[14],
                                 NDN_ECDSA_CURVE_SECP160R1,
                                 test_ecc_secp160r1_pub_raw_3, sizeof(test_ecc_secp160r1_pub_raw_3),
                                 test_ecc_secp160r1_prv_raw_3, sizeof(test_ecc_secp160r1_prv_raw_3),
                                 &test_results[14]);

  run_ecdsa_sig_sign_verify_test(test_names[15],
                                 NDN_ECDSA_CURVE_SECP160R1,
                                 test_ecc_secp160r1_pub_raw_4, sizeof(test_ecc_secp160r1_pub_raw_4),
                                 test_ecc_secp160r1_prv_raw_4, sizeof(test_ecc_secp160r1_prv_raw_4),
                                 &test_results[15]);

  

  if (check_all_tests_passed(test_results, test_names, TOTAL_NUM_TESTS)) {
    APP_LOG("ALL TESTS PASSED.\n");
  }
  else {
    APP_LOG("ONE OR MORE TESTS FAILED.\n");
  }

}

/**
 * @}
 */