
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "../../ndn-lite/ndn-error-code.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/logger.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/logger.h"

#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

#include "hardcoded-experimentation.h"
#include "test_functions.h"

bool test_sig_1_passed = false;
bool test_sig_2_passed = false;
bool test_sig_3_passed = false;
bool test_sig_4_passed = false;

/**@brief Function for application main entry.
 */
int main(void) {

  printf("Entered main function of main_board1.c\n");

  ndn_security_init();

  // Initialize the log.
  log_init();

  // Initialize timers.
  timers_init();

  // Initialize power management.
  power_management_init();

  run_test("test_sig_1", 
            test_sig_1, 40, sizeof(test_sig_1), 
            test_sig_1_decoded, sizeof(test_sig_1_decoded),
            test_sig_1_asn_encoded_probe_length_expected, 
            test_sig_1_asn_encoded_expected, sizeof(test_sig_1_asn_encoded_expected), 
            test_sig_1_decoded_expected, sizeof(test_sig_1_decoded_expected),
            &test_sig_1_passed);

  run_test("test_sig_2", 
            test_sig_2, 40, sizeof(test_sig_2), 
            test_sig_2_decoded, sizeof(test_sig_2_decoded),
            test_sig_2_asn_encoded_probe_length_expected, 
            test_sig_2_asn_encoded_expected, sizeof(test_sig_2_asn_encoded_expected), 
            test_sig_2_decoded_expected, sizeof(test_sig_2_decoded_expected),
            &test_sig_2_passed);

  run_test("test_sig_3", 
            test_sig_3, 40, sizeof(test_sig_3), 
            test_sig_3_decoded, sizeof(test_sig_3_decoded),
            test_sig_3_asn_encoded_probe_length_expected, 
            test_sig_3_asn_encoded_expected, sizeof(test_sig_3_asn_encoded_expected), 
            test_sig_3_decoded_expected, sizeof(test_sig_3_decoded_expected),
            &test_sig_3_passed);

  run_test("test_sig_4", 
            test_sig_4, 40, sizeof(test_sig_4), 
            test_sig_4_decoded, sizeof(test_sig_4_decoded),
            test_sig_4_asn_encoded_probe_length_expected, 
            test_sig_4_asn_encoded_expected, sizeof(test_sig_4_asn_encoded_expected), 
            test_sig_4_decoded_expected, sizeof(test_sig_4_decoded_expected),
            &test_sig_4_passed);

  APP_LOG("Results of all tests:\n");
  APP_LOG("test_sig_1: %d\n", test_sig_1_passed);
  APP_LOG("test_sig_2: %d\n", test_sig_2_passed);
  APP_LOG("test_sig_3: %d\n", test_sig_3_passed);
  APP_LOG("test_sig_4: %d\n", test_sig_4_passed);
  if (test_sig_1_passed &&
      test_sig_2_passed &&
      test_sig_3_passed &&
      test_sig_4_passed) {
    APP_LOG("ALL TESTS PASSED.\n");
  }
  else {
    APP_LOG("ONE OR MORE TESTS FAILED.\n");
  }

}

/**
 * @}
 */