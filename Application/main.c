
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "print-helper.h"
#include "asn-encode-decode-tests/asn-encode-decode-tests.h"
#include "ecdsa-sign-verify-tests/ecdsa-sign-verify-tests.h"
#include "hmac-sign-verify-tests/hmac-sign-verify-tests.h"
#include "sha256-sign-verify-tests/sha256-sign-verify-tests.h"

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
    run_sha256_sign_verify_tests() &&
    run_hmac_sign_verify_tests() &&
    run_asn_encode_decode_tests() &&
    run_ecdsa_sign_verify_tests()
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