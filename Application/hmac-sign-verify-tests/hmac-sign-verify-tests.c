
#include "hmac-sign-verify-tests.h"

#include "test-helpers.h"
#include "hmac-sign-verify-tests-def.h"

#include "../../ndn-lite/encode/data.h"
#include "../../ndn-lite/encode/encoder.h"
#include "../../ndn-lite/encode/metainfo.h"
#include "../../ndn-lite/ndn-constants.h"
#include "../../ndn-lite/ndn-enums.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-hmac.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

#define TEST_SIGNATURE_BUFFER_LEN 500

static uint8_t test_message[10] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};

static const uint32_t test_arbitrary_key_id = 666;

static uint8_t test_signature_buffer[TEST_SIGNATURE_BUFFER_LEN];

void _run_hmac_sign_verify_test(hmac_sign_verify_test_t *test);

bool run_hmac_sign_verify_tests() {
  memset(hmac_sign_verify_test_results, 0, sizeof(bool)*HMAC_SIGN_VERIFY_NUM_TESTS);
  for (int i = 0; i < HMAC_SIGN_VERIFY_NUM_TESTS; i++) {
    _run_hmac_sign_verify_test(&hmac_sign_verify_tests[i]);
  }
  return check_all_tests_passed(hmac_sign_verify_test_results, hmac_sign_verify_test_names,
                                HMAC_SIGN_VERIFY_NUM_TESTS);
}

void _run_hmac_sign_verify_test(hmac_sign_verify_test_t *test) {

  ndn_security_init();

  bool hmac_sign_success = false;
  bool hmac_verify_success = false;

  char *test_name = test->test_names[test->test_name_index];

  int ret_val = -1;

  ndn_hmac_key_t hmac_key;
  ndn_hmac_key_init(&hmac_key, test->key_val, test->key_len, test_arbitrary_key_id);

  uint32_t signature_size = 0;
  ret_val = ndn_hmac_sign(test_message, sizeof(test_message), 
                test_signature_buffer, sizeof(test_signature_buffer), 
                &hmac_key, &signature_size);
  if (ret_val != 0) {
    NRF_APP_LOG("ndn_hmac_sign failed, error code: %d\n", ret_val);
  }
  else {
    hmac_sign_success = true;
  }

  ret_val = ndn_hmac_verify(test_message, sizeof(test_message), 
                            test_signature_buffer, signature_size, 
                            &hmac_key);
  if (ret_val != 0) {
    NRF_APP_LOG("ndn_hmac_verify failed, error code: %d\n", ret_val);
  }
  else {
    hmac_verify_success = true;
  }

  if (hmac_sign_success && hmac_verify_success) {
    *test->passed = true;
  }
  else {
    *test->passed = false;
  }
}