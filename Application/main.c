
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

#define NUM_TESTS 16

bool test_results[NUM_TESTS];

char *test_names[] = {
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

uint8_t test_hack_pub_ecc[40];
uint8_t test_hack_prv_ecc[21];
uint8_t test_hack_msg[3] = {
  0x01, 0x02, 0x03
};
uint8_t test_hack_sig[40];

/**@brief Function for application main entry.
 */
int main(void) {

  printf("Entered main function of main_board1.c\n");

  memset(test_results, 0, sizeof(bool) * NUM_TESTS);

  printf("Value of test results before running tests:\n");
  print_test_results(test_results, NUM_TESTS);

  // Initialize the log.
  log_init();

  //**//
  ndn_security_init();

  uECC_set_rng(ndn_rng);

  uECC_make_key(test_hack_pub_ecc, test_hack_prv_ecc, uECC_secp160r1());

  NRF_APP_LOG_HEX("Public key generated (test hack secp160r1):", test_hack_pub_ecc, sizeof(test_hack_pub_ecc));
  NRF_APP_LOG_HEX("Private key generated (test hack secp160r1):", test_hack_prv_ecc, sizeof(test_hack_prv_ecc));

  uECC_sign(test_hack_prv_ecc, test_hack_msg, sizeof(test_hack_msg), test_hack_sig, uECC_secp160r1());

  NRF_APP_LOG_HEX("Signature generated (test hack secp160r1):", test_hack_sig, sizeof(test_hack_sig));

  if (uECC_verify(test_hack_pub_ecc, test_hack_msg, sizeof(test_hack_msg), test_hack_sig, uECC_secp160r1()) != 1) {
    NRF_APP_LOG("Failed to verify test hack secp160r1 signature.\n");
  }
  else {
    NRF_APP_LOG("Succeeded in verifying test hack secp160r1 signature.\n");
  }
  //**//

  // Initialize timers.
  timers_init();

  // Initialize power management.
  power_management_init();

  run_basic_asn_encode_decode_test(test_names[0], 
            test_sig_1, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_1), 
            test_sig_1_decoded, sizeof(test_sig_1_decoded),
            test_sig_1_asn_encoded_probe_length_expected, 
            test_sig_1_asn_encoded_expected, sizeof(test_sig_1_asn_encoded_expected), 
            test_sig_1_decoded_expected, sizeof(test_sig_1_decoded_expected),
            &test_results[0]);

  run_basic_asn_encode_decode_test(test_names[1], 
            test_sig_2, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_2), 
            test_sig_2_decoded, sizeof(test_sig_2_decoded),
            test_sig_2_asn_encoded_probe_length_expected, 
            test_sig_2_asn_encoded_expected, sizeof(test_sig_2_asn_encoded_expected), 
            test_sig_2_decoded_expected, sizeof(test_sig_2_decoded_expected),
            &test_results[1]);

  run_basic_asn_encode_decode_test(test_names[2], 
            test_sig_3, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_3), 
            test_sig_3_decoded, sizeof(test_sig_3_decoded),
            test_sig_3_asn_encoded_probe_length_expected, 
            test_sig_3_asn_encoded_expected, sizeof(test_sig_3_asn_encoded_expected), 
            test_sig_3_decoded_expected, sizeof(test_sig_3_decoded_expected),
            &test_results[2]);

  run_basic_asn_encode_decode_test(test_names[3], 
            test_sig_4, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_4), 
            test_sig_4_decoded, sizeof(test_sig_4_decoded),
            test_sig_4_asn_encoded_probe_length_expected, 
            test_sig_4_asn_encoded_expected, sizeof(test_sig_4_asn_encoded_expected), 
            test_sig_4_decoded_expected, sizeof(test_sig_4_decoded_expected),
            &test_results[3]);

  run_basic_asn_encode_decode_test(test_names[4], 
            test_sig_5, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_5), 
            test_sig_5_decoded, sizeof(test_sig_5_decoded),
            test_sig_5_asn_encoded_probe_length_expected, 
            test_sig_5_asn_encoded_expected, sizeof(test_sig_5_asn_encoded_expected), 
            test_sig_5_decoded_expected, sizeof(test_sig_5_decoded_expected),
            &test_results[4]);

  run_basic_asn_encode_decode_test(test_names[5], 
            test_sig_6, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_6), 
            test_sig_6_decoded, sizeof(test_sig_6_decoded),
            test_sig_6_asn_encoded_probe_length_expected, 
            test_sig_6_asn_encoded_expected, sizeof(test_sig_6_asn_encoded_expected), 
            test_sig_6_decoded_expected, sizeof(test_sig_6_decoded_expected),
            &test_results[5]);

  run_basic_asn_encode_decode_test(test_names[6], 
            test_sig_7, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_7), 
            test_sig_7_decoded, sizeof(test_sig_7_decoded),
            test_sig_7_asn_encoded_probe_length_expected, 
            test_sig_7_asn_encoded_expected, sizeof(test_sig_7_asn_encoded_expected), 
            test_sig_7_decoded_expected, sizeof(test_sig_7_decoded_expected),
            &test_results[6]);

  run_basic_asn_encode_decode_test(test_names[7], 
            test_sig_8, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_8), 
            test_sig_8_decoded, sizeof(test_sig_8_decoded),
            test_sig_8_asn_encoded_probe_length_expected, 
            test_sig_8_asn_encoded_expected, sizeof(test_sig_8_asn_encoded_expected), 
            test_sig_8_decoded_expected, sizeof(test_sig_8_decoded_expected),
            &test_results[7]);

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

  if (check_all_tests_passed(test_results, test_names, NUM_TESTS)) {
    APP_LOG("ALL TESTS PASSED.\n");
  }
  else {
    APP_LOG("ONE OR MORE TESTS FAILED.\n");
  }

}

/**
 * @}
 */