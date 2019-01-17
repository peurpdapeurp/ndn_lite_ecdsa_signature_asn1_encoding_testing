
#ifndef ECDSA_SIG_SIGN_VERIFY_TESTS_H
#define ECDSA_SIG_SIGN_VERIFY_TESTS_H

#include <stdint.h>

// test secp256r1 keypair 1; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 32, and asn encoded
// tlv length is 68
extern const uint8_t test_ecc_secp256r1_prv_raw_1[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_1[64];

// test secp256r1 keypair 2; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 32, and asn encoded
// tlv length is 69
extern const uint8_t test_ecc_secp256r1_prv_raw_2[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_2[64];

// test secp256r1 keypair 3; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 33, second integer is length 33, and asn encoded
// tlv length is 70
extern const uint8_t test_ecc_secp256r1_prv_raw_3[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_3[64];

// test secp256r1 keypair 4; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 32, second integer is length 33, and asn encoded
// tlv length is 69
extern const uint8_t test_ecc_secp256r1_prv_raw_4[32];
extern const uint8_t test_ecc_secp256r1_pub_raw_4[64];

// test secp160r1 keypair 1; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21, and asn encoded
// tlv length is 45
extern const uint8_t test_ecc_secp160r1_prv_raw_1[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_1[40];

// test secp160r1 keypair 2; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21, and asn encoded
// tlv length is 45
extern const uint8_t test_ecc_secp160r1_prv_raw_2[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_2[40];

// test secp160r1 keypair 3; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21, and asn encoded
// tlv length is 45
extern const uint8_t test_ecc_secp160r1_prv_raw_3[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_3[40];

// test secp160r1 keypair 4; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21, and asn encoded
// tlv length is 45
extern const uint8_t test_ecc_secp160r1_prv_raw_4[21];
extern const uint8_t test_ecc_secp160r1_pub_raw_4[40];

#endif // ECDSA_SIG_SIGN_VERIFY_TESTS_H