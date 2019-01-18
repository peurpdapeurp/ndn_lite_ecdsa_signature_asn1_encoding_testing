
#ifndef SHA256_SIGN_VERIFY_TESTS_DEF_H
#define SHA256_SIGN_VERIFY_TESTS_DEF_H

#include "sha256-sign-verify-tests.h"

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#define SHA256_SIGN_VERIFY_NUM_TESTS 1

extern char *sha256_sign_verify_test_names[SHA256_SIGN_VERIFY_NUM_TESTS];

extern bool sha256_sign_verify_test_results[SHA256_SIGN_VERIFY_NUM_TESTS];

extern sha256_sign_verify_test_t sha256_sign_verify_tests[SHA256_SIGN_VERIFY_NUM_TESTS];

#endif // SHA256_SIGN_VERIFY_TESTS_DEF_H