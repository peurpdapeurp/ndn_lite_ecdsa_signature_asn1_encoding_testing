
#ifndef HMAC_SIGN_VERIFY_TESTS_H
#define HMAC_SIGN_VERIFY_TESTS_H

#include <stdbool.h>
#include <stdint.h>

// returns true if all tests passed, false otherwise
bool run_hmac_sign_verify_tests();

typedef struct {
  char **test_names;
  uint32_t test_name_index;
  const uint8_t *key_val;
  uint32_t key_len;
  bool *passed;
} hmac_sign_verify_test_t;

#endif // HMAC_SIGN_VERIFY_TESTS_H