
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "print-helper.h"
#include "basic-asn-encode-decode-tests/basic-asn-encode-decode-tests.h"
#include "ecdsa-sig-sign-verify-tests/ecdsa-sig-sign-verify-tests.h"

/**@brief Function for application main entry.
 */
int main(void) {

  // Initialize the log.
  log_init();

  printf("Entered main function of main_board1.c\n");

  // Initialize timers.
  timers_init();
  // Initialize power management.
  power_management_init();

  if (
    run_basic_asn_encode_decode_tests() &&
    run_ecdsa_sig_sign_verify_tests()
  )
  {
    APP_LOG("ALL SIGN-VERIFY TESTS PASSED.\n");
  }
  else {
    APP_LOG("ONE OR MORE SIGN-VERIFY TESTS FAILED.\n");
  }

}

/**
 * @}
 */