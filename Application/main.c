
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "print-helper.h"

#include "basic-asn-encode-decode-tests.h"
#include "ecdsa-sig-sign-verify-tests.h"

#include "../../ndn-lite/security/detail/default-backend/sec-lib/micro-ecc/uECC.h"
#include "../../ndn-lite/security/ndn-lite-sec-config.h"
#include "../../ndn-lite/security/ndn-lite-rng.h"
#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"
#include "../../ndn-lite/ndn-enums.h"

uint8_t test_hack_pub_ecc[100];
uint8_t test_hack_prv_ecc[100];

/**@brief Function for application main entry.
 */
int main(void) {

  // Initialize the log.
  log_init();

  printf("Entered main function of main_board1.c\n");

  //**//
  ndn_security_init();

  uECC_set_rng(ndn_rng);

  uECC_Curve curve = uECC_secp256r1();
  int pub_key_size = uECC_curve_public_key_size(curve);
  int pri_key_size = uECC_curve_private_key_size(curve);
  uECC_make_key(test_hack_pub_ecc, test_hack_prv_ecc, curve);

  NRF_APP_LOG_HEX("Public key generated (test hack secp256r1):", test_hack_pub_ecc, pub_key_size);
  NRF_APP_LOG_HEX("Private key generated (test hack secp256r1):", test_hack_prv_ecc, pri_key_size);

  // Initialize timers.
  timers_init();
  // Initialize power management.
  power_management_init();

  if (
    run_basic_asn_encode_decode_tests() &&
    run_ecdsa_sig_sign_verify_tests()
  )
  {
    NRF_APP_LOG("ALL TESTS PASSED.\n");
  }
  else {
    NRF_APP_LOG("ONE OR MORE TESTS FAILED.\n");
  }

}

/**
 * @}
 */