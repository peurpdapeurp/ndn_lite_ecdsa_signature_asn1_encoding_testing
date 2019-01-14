
#ifndef ECDSA_SIG_SIGN_VERIFY_TESTS_H
#define ECDSA_SIG_SIGN_VERIFY_TESTS_H

#include <stdint.h>

// test keypair 1; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 20, and asn encoded
// tlv length is 68
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// test private key 1
extern const uint8_t test_ecc_prv_raw_1[32];
// test public key 1
extern const uint8_t test_ecc_pub_raw_1[64];
////////////////////////////////////////////////////////////////////////////////////////////////////////////

// test keypair 2; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 21, second integer is length 20, and asn encoded
// tlv length is 69
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// test private key 2
extern const uint8_t test_ecc_prv_raw_2[32];
// test public key 2
extern const uint8_t test_ecc_pub_raw_2[64];
////////////////////////////////////////////////////////////////////////////////////////////////////////////

// test keypair 3; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 21, second integer is length 21, and asn encoded
// tlv length is 70
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// test private key 3
extern const uint8_t test_ecc_prv_raw_3[32];
// test public key 3
extern const uint8_t test_ecc_pub_raw_3[64];
////////////////////////////////////////////////////////////////////////////////////////////////////////////

// test keypair 4; if ecdsa deterministic signing is used with the micro-ecc backend for ecdsa signing,
// will generate a signature whose first integer is length 20, second integer is length 21, and asn encoded
// tlv length is 69
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// test private key 4
extern const uint8_t test_ecc_prv_raw_4[32];
// test public key 4
extern const uint8_t test_ecc_pub_raw_4[64];
////////////////////////////////////////////////////////////////////////////////////////////////////////////

#endif // ECDSA_SIG_SIGN_VERIFY_TESTS_H