
#include "sha256-sign-verify-tests.h"

#include "test-helpers.h"
#include "sha256-sign-verify-tests-def.h"

#include "../../ndn-lite/encode/data.h"
#include "../../ndn-lite/encode/encoder.h"
#include "../../ndn-lite/encode/metainfo.h"
#include "../../ndn-lite/ndn-constants.h"
#include "../../ndn-lite/ndn-enums.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-sha.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

#define TEST_HASH_BUFFER_LEN 500

static uint8_t test_message[10] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};

static uint8_t test_hash_buffer[TEST_HASH_BUFFER_LEN];

void _run_sha256_sign_verify_test(sha256_sign_verify_test_t *test);

bool run_sha256_sign_verify_tests() {
  memset(sha256_sign_verify_test_results, 0, sizeof(bool)*SHA256_SIGN_VERIFY_NUM_TESTS);
  for (int i = 0; i < SHA256_SIGN_VERIFY_NUM_TESTS; i++) {
    _run_sha256_sign_verify_test(&sha256_sign_verify_tests[i]);
  }
  return check_all_tests_passed(sha256_sign_verify_test_results, sha256_sign_verify_test_names,
                                SHA256_SIGN_VERIFY_NUM_TESTS);
}

void _run_sha256_sign_verify_test(sha256_sign_verify_test_t *test) {

  ndn_security_init();

  bool sha256_sign_success = false;
  bool sha256_verify_success = false;

  char *test_name = test->test_names[test->test_name_index];

  int ret_val = -1;

  uint32_t hash_size = 0;
  ret_val = ndn_sha256_sign(test_message, sizeof(test_message), 
                            test_hash_buffer, sizeof(test_hash_buffer), 
                            &hash_size);
  if (ret_val != 0) {
    NRF_APP_LOG("ndn_sha256_sign failed, error code: %d\n", ret_val);
  }
  else {
    sha256_sign_success = true;
  }

  ret_val = ndn_sha256_verify(test_message, sizeof(test_message), 
                            test_hash_buffer, hash_size);
  if (ret_val != 0) {
    NRF_APP_LOG("ndn_sha256_verify failed, error code: %d\n", ret_val);
  }
  else {
    sha256_verify_success = true;
  }

  if (sha256_sign_success && sha256_verify_success) {
    *test->passed = true;
  }
  else {
    *test->passed = false;
  }
}