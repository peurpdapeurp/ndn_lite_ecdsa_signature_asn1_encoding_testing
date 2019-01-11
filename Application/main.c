
#include "app-init-files/app_definitions.h"
#include "app-init-files/app_initialization_functions.h"

#include "../../ndn-lite/ndn-error-code.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/logger.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/logger.h"

#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

uint8_t test_sig[48] = {0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
                        0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
                        0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
                        0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

uint8_t test_decoded_sig[40];

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

  uint32_t asn1_encoded_sig_len = 0; 
  int ret_val = 0;
  ret_val = ndn_asn1_probe_ecdsa_signature_encoding_size(test_sig, 40, &asn1_encoded_sig_len);

  if (ret_val == NDN_SUCCESS) {
    APP_LOG("Probing of test signature ASN1 encoding length success, length: %d\n", asn1_encoded_sig_len);
  }
  else {
    APP_LOG("Probing of test signature ASN1 encoding length failed, error code: %d\n", ret_val);
  }

  ret_val = ndn_asn1_encode_ecdsa_signature(test_sig, 40, sizeof(test_sig));
  
  if (ret_val == NDN_SUCCESS) {
    APP_LOG("ASN1 encoding of test signature success.\n");
    APP_LOG_HEX("Value of ASN1 encoded test signature:", test_sig, asn1_encoded_sig_len);
  }
  else {
    APP_LOG("ASN1 encoding of test signature failed, error code: %d\n", ret_val);
  }

  uint32_t decoded_sig_len = 0;
  ret_val = ndn_asn1_decode_ecdsa_signature(test_sig, asn1_encoded_sig_len, test_decoded_sig, sizeof(test_decoded_sig),
                                            &decoded_sig_len);

  if (ret_val == NDN_SUCCESS) {
    APP_LOG("ASN1 decoding of test signature success.\n");
    APP_LOG_HEX("Value of decoded test signature:", test_decoded_sig, decoded_sig_len);
  }
  else {
    APP_LOG("ASN1 decoding of test signature failed, error code: %d\n", ret_val);
  }

}

/**
 * @}
 */