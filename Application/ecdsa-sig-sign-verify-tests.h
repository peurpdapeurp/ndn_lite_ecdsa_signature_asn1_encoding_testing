
#ifndef ECDSA_SIG_SIGN_VERIFY_TESTS_H
#define ECDSA_SIG_SIGN_VERIFY_TESTS_H

#include <stdint.h>

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 32
extern const uint8_t test_ecc_secp256r1_prv_raw_1[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_1[64];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 33
extern const uint8_t test_ecc_secp256r1_prv_raw_2[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_2[64];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 32
extern const uint8_t test_ecc_secp256r1_prv_raw_3[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_3[64];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 33
extern const uint8_t test_ecc_secp256r1_prv_raw_4[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_4[64];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_1[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_1[40];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_2[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_2[40];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_3[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_3[40];

// if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21
extern const uint8_t test_ecc_secp160r1_prv_raw_4[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_4[40];

#endif // ECDSA_SIG_SIGN_VERIFY_TESTS_H