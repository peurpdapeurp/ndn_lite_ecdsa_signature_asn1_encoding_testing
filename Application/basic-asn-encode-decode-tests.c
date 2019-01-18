/*
 * Copyright (C) Edward Lu
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 *
 * See AUTHORS.md for complete list of NDN IOT PKG authors and contributors.
 */

#include "basic-asn-encode-decode-tests.h"

uint8_t test_sig_1[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_1_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x2D,

0x02, 0x14,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x15,
0x00,             
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_1_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_1_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_2[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_2_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x2D,

0x02, 0x15,
0x00,
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x14,         
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_2_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_2_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_3[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_3_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 2] = {
0x30, 0x2C,

0x02, 0x14,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x14,         
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_3_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_3_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_4[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_4_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0x30, 0x2E,

0x02, 0x15,
0x00,
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x15,
0x00,      
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_4_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_4_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_5[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_5_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x45,

0x02, 0x20,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,

0x02, 0x21,
0x00,     
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

uint8_t test_sig_5_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_5_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_6[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_6_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x45,

0x02, 0x21,
0x00,
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,

0x02, 0x20,     
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

uint8_t test_sig_6_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_6_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_7[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_7_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 2] = {
0x30, 0x44,

0x02, 0x20,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,

0x02, 0x20,     
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

uint8_t test_sig_7_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_7_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_8[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_8_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
0x30, 0x46,

0x02, 0x21,
0x00,
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,

0x02, 0x21,
0x00,      
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};

uint8_t test_sig_8_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_8_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};