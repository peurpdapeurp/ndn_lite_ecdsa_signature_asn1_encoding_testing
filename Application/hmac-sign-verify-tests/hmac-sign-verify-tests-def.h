
#ifndef HMAC_SIGN_VERIFY_TESTS_DEF_H
#define HMAC_SIGN_VERIFY_TESTS_DEF_H

#include "hmac-sign-verify-tests.h"

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#define HMAC_SIGN_VERIFY_NUM_TESTS 1
#define TEST_HMAC_KEY_SIZE 10

extern char *hmac_sign_verify_test_names[HMAC_SIGN_VERIFY_NUM_TESTS];

extern bool hmac_sign_verify_test_results[HMAC_SIGN_VERIFY_NUM_TESTS];

extern hmac_sign_verify_test_t hmac_sign_verify_tests[HMAC_SIGN_VERIFY_NUM_TESTS];

extern const uint8_t test_hmac_key_1[TEST_HMAC_KEY_SIZE];

#endif // HMAC_SIGN_VERIFY_TESTS_DEF_H