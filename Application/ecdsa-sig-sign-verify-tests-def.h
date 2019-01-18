
#ifndef ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H
#define ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H

#include "ecdsa-sig-sign-verify-tests.h"

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#define ECDSA_SIGN_VERIFY_NUM_TESTS 16

extern char *ecdsa_sig_sign_verify_test_names[ECDSA_SIGN_VERIFY_NUM_TESTS];

extern bool ecdsa_sig_sign_verify_test_results[ECDSA_SIGN_VERIFY_NUM_TESTS];

extern ecdsa_sig_sign_verify_test_t ecdsa_sig_sign_verify_tests[ECDSA_SIGN_VERIFY_NUM_TESTS];

//////////////////////////////////////////////////////////////////////////////////////////////////////////

#define SECP256R1_PRI_KEY_SIZE 32
#define SECP256R1_PUB_KEY_SIZE 64

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 33
extern const uint8_t test_ecc_secp256r1_prv_raw_1[SECP256R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp256r1_pub_raw_1[SECP256R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 32
extern const uint8_t test_ecc_secp256r1_prv_raw_2[SECP256R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp256r1_pub_raw_2[SECP256R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 32
extern const uint8_t test_ecc_secp256r1_prv_raw_3[SECP256R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp256r1_pub_raw_3[SECP256R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 33
extern const uint8_t test_ecc_secp256r1_prv_raw_4[SECP256R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp256r1_pub_raw_4[SECP256R1_PUB_KEY_SIZE];

//////////////////////////////////////////////////////////////////////////////////////////////////////////

#define SECP224R1_PRI_KEY_SIZE 28
#define SECP224R1_PUB_KEY_SIZE 56

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 29, second integer is length 29
extern const uint8_t test_ecc_secp224r1_prv_raw_1[SECP224R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp224r1_pub_raw_1[SECP224R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 28, second integer is length 28
extern const uint8_t test_ecc_secp224r1_prv_raw_2[SECP224R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp224r1_pub_raw_2[SECP224R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 29, second integer is length 28
extern const uint8_t test_ecc_secp224r1_prv_raw_3[SECP224R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp224r1_pub_raw_3[SECP224R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 28, second integer is length 29
extern const uint8_t test_ecc_secp224r1_prv_raw_4[SECP224R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp224r1_pub_raw_4[SECP224R1_PUB_KEY_SIZE];

//////////////////////////////////////////////////////////////////////////////////////////////////////////

#define SECP192R1_PRI_KEY_SIZE 24
#define SECP192R1_PUB_KEY_SIZE 48

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 25, second integer is length 25
extern const uint8_t test_ecc_secp192r1_prv_raw_1[SECP192R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp192r1_pub_raw_1[SECP192R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 24, second integer is length 24
extern const uint8_t test_ecc_secp192r1_prv_raw_2[SECP192R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp192r1_pub_raw_2[SECP192R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 25, second integer is length 24
extern const uint8_t test_ecc_secp192r1_prv_raw_3[SECP192R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp192r1_pub_raw_3[SECP192R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 24, second integer is length 25
extern const uint8_t test_ecc_secp192r1_prv_raw_4[SECP192R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp192r1_pub_raw_4[SECP192R1_PUB_KEY_SIZE];

//////////////////////////////////////////////////////////////////////////////////////////////////////////

#define SECP160R1_PRI_KEY_SIZE 21
#define SECP160R1_PUB_KEY_SIZE 40

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 21, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_1[SECP160R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp160r1_pub_raw_1[SECP160R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 20
extern const uint8_t test_ecc_secp160r1_prv_raw_2[SECP160R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp160r1_pub_raw_2[SECP160R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 21, second integer is length 20
extern const uint8_t test_ecc_secp160r1_prv_raw_3[SECP160R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp160r1_pub_raw_3[SECP160R1_PUB_KEY_SIZE];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_4[SECP160R1_PRI_KEY_SIZE];
extern const uint8_t test_ecc_secp160r1_pub_raw_4[SECP160R1_PUB_KEY_SIZE];

#endif // ECDSA_SIG_SIGN_VERIFY_TESTS_DEF_H