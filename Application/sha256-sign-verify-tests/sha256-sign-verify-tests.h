
#ifndef SHA256_SIGN_VERIFY_TESTS_H
#define SHA256_SIGN_VERIFY_TESTS_H

#include <stdbool.h>
#include <stdint.h>

// returns true if all tests passed, false otherwise
bool run_sha256_sign_verify_tests();

typedef struct {
  char **test_names;
  uint32_t test_name_index;
  bool *passed;
} sha256_sign_verify_test_t;

#endif // SHA256_SIGN_VERIFY_TESTS_H