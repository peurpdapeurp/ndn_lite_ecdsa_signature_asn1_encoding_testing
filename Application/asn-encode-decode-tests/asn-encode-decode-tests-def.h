
#ifndef ASN_ENCODE_DECODE_TESTS_DEF_H
#define ASN_ENCODE_DECODE_TESTS_DEF_H

#include "asn-encode-decode-tests.h"

#define ASN_ENCODE_DECODE_NUM_TESTS 8

extern char *asn_encode_decode_test_names[ASN_ENCODE_DECODE_NUM_TESTS];

extern bool asn_encode_decode_test_results[ASN_ENCODE_DECODE_NUM_TESTS];

extern asn_encode_decode_test_t asn_encode_decode_tests[ASN_ENCODE_DECODE_NUM_TESTS];

// testing the minimum signature size
////////////////////////////////////////////////////////////////////////////////////////

// first integer requires padding, second integer requires padding
#define test_sig_1_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE)
extern uint8_t test_sig_1[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_1_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_1_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];
extern uint8_t test_sig_1_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

// first integer requires no padding, second integer requires no padding
#define test_sig_2_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 2)
extern uint8_t test_sig_2[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_2_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 2];
extern uint8_t test_sig_2_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];
extern uint8_t test_sig_2_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

// first integer requires padding, second integer requires no padding
#define test_sig_3_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1)
extern uint8_t test_sig_3[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_3_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1];
extern uint8_t test_sig_3_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];
extern uint8_t test_sig_3_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

// first integer requires no padding, second integer requires padding
#define test_sig_4_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1)
extern uint8_t test_sig_4[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_4_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1];
extern uint8_t test_sig_4_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];
extern uint8_t test_sig_4_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

////////////////////////////////////////////////////////////////////////////////////////

// testing the maximum signature size
////////////////////////////////////////////////////////////////////////////////////////

// first integer requires padding, second integer requires padding
#define test_sig_5_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE)
extern uint8_t test_sig_5[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_5_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_5_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];
extern uint8_t test_sig_5_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

// first integer requires no padding, second integer requires no padding
#define test_sig_6_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 2)
extern uint8_t test_sig_6[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_6_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 2];
extern uint8_t test_sig_6_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];
extern uint8_t test_sig_6_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

// first integer requires padding, second integer requires no padding
#define test_sig_7_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1)
extern uint8_t test_sig_7[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_7_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1];
extern uint8_t test_sig_7_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];
extern uint8_t test_sig_7_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

// first integer requires no padding, second integer requires padding
#define test_sig_8_asn_encoded_probe_length_expected (uint32_t) (NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1)
extern uint8_t test_sig_8[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE];
extern uint8_t test_sig_8_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1];
extern uint8_t test_sig_8_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];
extern uint8_t test_sig_8_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

#endif // ASN_ENCODE_DECODE_TESTS_DEF_H