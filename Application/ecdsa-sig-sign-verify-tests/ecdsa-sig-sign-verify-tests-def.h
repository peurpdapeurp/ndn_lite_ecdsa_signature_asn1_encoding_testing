
#ifndef ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H
#define ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H

#include "ecdsa-sig-sign-verify-tests.h"

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#define ECDSA_SIGN_VERIFY_NUM_TESTS 20

extern char *ecdsa_sig_sign_verify_test_names[ECDSA_SIGN_VERIFY_NUM_TESTS];

extern bool ecdsa_sig_sign_verify_test_results[ECDSA_SIGN_VERIFY_NUM_TESTS];

extern ecdsa_sig_sign_verify_test_t ecdsa_sig_sign_verify_tests[ECDSA_SIGN_VERIFY_NUM_TESTS];

#endif // ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H