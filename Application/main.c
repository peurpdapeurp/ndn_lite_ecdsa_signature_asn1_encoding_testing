
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "print-helper.h"

#include "basic-asn-encode-decode-tests.h"
#include "ecdsa-sig-sign-verify-tests.h"
#include "test_functions.h"

#define NUM_TESTS 12

bool test_results[NUM_TESTS];

/**@brief Function for application main entry.
 */
int main(void) {

  printf("Entered main function of main_board1.c\n");

  // Initialize the log.
  log_init();

  // Initialize timers.
  timers_init();

  // Initialize power management.
  power_management_init();

  // test 0
  run_basic_asn_encode_decode_test("test_sig_1", 
            test_sig_1, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_1), 
            test_sig_1_decoded, sizeof(test_sig_1_decoded),
            test_sig_1_asn_encoded_probe_length_expected, 
            test_sig_1_asn_encoded_expected, sizeof(test_sig_1_asn_encoded_expected), 
            test_sig_1_decoded_expected, sizeof(test_sig_1_decoded_expected),
            &test_results[0]);

  // test 1
  run_basic_asn_encode_decode_test("test_sig_2", 
            test_sig_2, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_2), 
            test_sig_2_decoded, sizeof(test_sig_2_decoded),
            test_sig_2_asn_encoded_probe_length_expected, 
            test_sig_2_asn_encoded_expected, sizeof(test_sig_2_asn_encoded_expected), 
            test_sig_2_decoded_expected, sizeof(test_sig_2_decoded_expected),
            &test_results[1]);

  // test 2
  run_basic_asn_encode_decode_test("test_sig_3", 
            test_sig_3, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_3), 
            test_sig_3_decoded, sizeof(test_sig_3_decoded),
            test_sig_3_asn_encoded_probe_length_expected, 
            test_sig_3_asn_encoded_expected, sizeof(test_sig_3_asn_encoded_expected), 
            test_sig_3_decoded_expected, sizeof(test_sig_3_decoded_expected),
            &test_results[2]);

  // test 3
  run_basic_asn_encode_decode_test("test_sig_4", 
            test_sig_4, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_4), 
            test_sig_4_decoded, sizeof(test_sig_4_decoded),
            test_sig_4_asn_encoded_probe_length_expected, 
            test_sig_4_asn_encoded_expected, sizeof(test_sig_4_asn_encoded_expected), 
            test_sig_4_decoded_expected, sizeof(test_sig_4_decoded_expected),
            &test_results[3]);

  // test 4
  run_basic_asn_encode_decode_test("test_sig_5", 
            test_sig_5, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_5), 
            test_sig_5_decoded, sizeof(test_sig_5_decoded),
            test_sig_5_asn_encoded_probe_length_expected, 
            test_sig_5_asn_encoded_expected, sizeof(test_sig_5_asn_encoded_expected), 
            test_sig_5_decoded_expected, sizeof(test_sig_5_decoded_expected),
            &test_results[4]);

  // test 5
  run_basic_asn_encode_decode_test("test_sig_6", 
            test_sig_6, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_6), 
            test_sig_6_decoded, sizeof(test_sig_6_decoded),
            test_sig_6_asn_encoded_probe_length_expected, 
            test_sig_6_asn_encoded_expected, sizeof(test_sig_6_asn_encoded_expected), 
            test_sig_6_decoded_expected, sizeof(test_sig_6_decoded_expected),
            &test_results[5]);

  // test 6
  run_basic_asn_encode_decode_test("test_sig_7", 
            test_sig_7, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_7), 
            test_sig_7_decoded, sizeof(test_sig_7_decoded),
            test_sig_7_asn_encoded_probe_length_expected, 
            test_sig_7_asn_encoded_expected, sizeof(test_sig_7_asn_encoded_expected), 
            test_sig_7_decoded_expected, sizeof(test_sig_7_decoded_expected),
            &test_results[6]);

  // test 7
  run_basic_asn_encode_decode_test("test_sig_8", 
            test_sig_8, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_8), 
            test_sig_8_decoded, sizeof(test_sig_8_decoded),
            test_sig_8_asn_encoded_probe_length_expected, 
            test_sig_8_asn_encoded_expected, sizeof(test_sig_8_asn_encoded_expected), 
            test_sig_8_decoded_expected, sizeof(test_sig_8_decoded_expected),
            &test_results[7]);

  // test 8
  run_ecdsa_sig_sign_verify_test("test_keypair_1",
                                 test_ecc_pub_raw_1, sizeof(test_ecc_pub_raw_1),
                                 test_ecc_prv_raw_1, sizeof(test_ecc_prv_raw_1),
                                 &test_results[8]);

  // test 9
  run_ecdsa_sig_sign_verify_test("test_keypair_2",
                                 test_ecc_pub_raw_2, sizeof(test_ecc_pub_raw_2),
                                 test_ecc_prv_raw_2, sizeof(test_ecc_prv_raw_2),
                                 &test_results[9]);

  // test 10
  run_ecdsa_sig_sign_verify_test("test_keypair_3",
                                 test_ecc_pub_raw_3, sizeof(test_ecc_pub_raw_3),
                                 test_ecc_prv_raw_3, sizeof(test_ecc_prv_raw_3),
                                 &test_results[10]);

  // test 11
  run_ecdsa_sig_sign_verify_test("test_keypair_4",
                                 test_ecc_pub_raw_4, sizeof(test_ecc_pub_raw_4),
                                 test_ecc_prv_raw_4, sizeof(test_ecc_prv_raw_4),
                                 &test_results[11]);

  if (check_all_tests_passed(test_results, NUM_TESTS)) {
    APP_LOG("ALL TESTS PASSED.\n");
  }
  else {
    APP_LOG("ONE OR MORE TESTS FAILED.\n");
  }

}

/**
 * @}
 */