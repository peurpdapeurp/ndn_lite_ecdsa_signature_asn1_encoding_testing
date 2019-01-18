
#include "basic-asn-encode-decode-tests-def.h"

char *basic_asn_encode_decode_test_names[BASIC_ASN_ENCODE_DECODE_NUM_TESTS] = {
  "test_asn_encode_decode_min_sig_len_int1_pad_int2_pad",
  "test_asn_encode_decode_min_sig_len_int1_no_pad_int2_no_pad",
  "test_asn_encode_decode_min_sig_len_int1_pad_int2_no_pad",
  "test_asn_encode_decode_min_sig_len_int1_no_pad_int2_pad",
  "test_asn_encode_decode_max_sig_len_int1_pad_int2_pad",
  "test_asn_encode_decode_max_sig_len_int1_no_pad_int2_no_pad",
  "test_asn_encode_decode_max_sig_len_int1_pad_int2_no_pad",
  "test_asn_encode_decode_max_sig_len_int1_no_pad_int2_pad",
};

bool basic_asn_encode_decode_test_results[BASIC_ASN_ENCODE_DECODE_NUM_TESTS];

basic_asn_encode_decode_test_t basic_asn_encode_decode_tests[BASIC_ASN_ENCODE_DECODE_NUM_TESTS] = {
    {
      basic_asn_encode_decode_test_names,
      0,
      test_sig_1, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_1), 
      test_sig_1_decoded, sizeof(test_sig_1_decoded),
      test_sig_1_asn_encoded_probe_length_expected, 
      test_sig_1_asn_encoded_expected, sizeof(test_sig_1_asn_encoded_expected), 
      test_sig_1_decoded_expected, sizeof(test_sig_1_decoded_expected),
      &basic_asn_encode_decode_test_results[0]
    },
    {
      basic_asn_encode_decode_test_names, 
      1,
      test_sig_2, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_2), 
      test_sig_2_decoded, sizeof(test_sig_2_decoded),
      test_sig_2_asn_encoded_probe_length_expected, 
      test_sig_2_asn_encoded_expected, sizeof(test_sig_2_asn_encoded_expected), 
      test_sig_2_decoded_expected, sizeof(test_sig_2_decoded_expected),
      &basic_asn_encode_decode_test_results[1]
    },
    {
      basic_asn_encode_decode_test_names,
      2,
      test_sig_3, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_3), 
      test_sig_3_decoded, sizeof(test_sig_3_decoded),
      test_sig_3_asn_encoded_probe_length_expected, 
      test_sig_3_asn_encoded_expected, sizeof(test_sig_3_asn_encoded_expected), 
      test_sig_3_decoded_expected, sizeof(test_sig_3_decoded_expected),
      &basic_asn_encode_decode_test_results[2]
    },
    {
      basic_asn_encode_decode_test_names,
      3,
      test_sig_4, NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE, sizeof(test_sig_4), 
      test_sig_4_decoded, sizeof(test_sig_4_decoded),
      test_sig_4_asn_encoded_probe_length_expected, 
      test_sig_4_asn_encoded_expected, sizeof(test_sig_4_asn_encoded_expected), 
      test_sig_4_decoded_expected, sizeof(test_sig_4_decoded_expected),
      &basic_asn_encode_decode_test_results[3]
    },
    {
      basic_asn_encode_decode_test_names, 
      4,
      test_sig_5, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_5), 
      test_sig_5_decoded, sizeof(test_sig_5_decoded),
      test_sig_5_asn_encoded_probe_length_expected, 
      test_sig_5_asn_encoded_expected, sizeof(test_sig_5_asn_encoded_expected), 
      test_sig_5_decoded_expected, sizeof(test_sig_5_decoded_expected),
      &basic_asn_encode_decode_test_results[4]
    },
    {
      basic_asn_encode_decode_test_names,
      5,
      test_sig_6, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_6), 
      test_sig_6_decoded, sizeof(test_sig_6_decoded),
      test_sig_6_asn_encoded_probe_length_expected, 
      test_sig_6_asn_encoded_expected, sizeof(test_sig_6_asn_encoded_expected), 
      test_sig_6_decoded_expected, sizeof(test_sig_6_decoded_expected),
      &basic_asn_encode_decode_test_results[5]
    },
    {
      basic_asn_encode_decode_test_names, 
      6,
      test_sig_7, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_7), 
      test_sig_7_decoded, sizeof(test_sig_7_decoded),
      test_sig_7_asn_encoded_probe_length_expected, 
      test_sig_7_asn_encoded_expected, sizeof(test_sig_7_asn_encoded_expected), 
      test_sig_7_decoded_expected, sizeof(test_sig_7_decoded_expected),
      &basic_asn_encode_decode_test_results[6]
    },
    {
      basic_asn_encode_decode_test_names, 
      7,
      test_sig_8, NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE, sizeof(test_sig_8), 
      test_sig_8_decoded, sizeof(test_sig_8_decoded),
      test_sig_8_asn_encoded_probe_length_expected, 
      test_sig_8_asn_encoded_expected, sizeof(test_sig_8_asn_encoded_expected), 
      test_sig_8_decoded_expected, sizeof(test_sig_8_decoded_expected),
      &basic_asn_encode_decode_test_results[7]
    },
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_1[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_1_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
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

uint8_t test_sig_1_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_1_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_2[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_2_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 2] = {
0x30, 0x2C,

0x02, 0x14,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x14,         
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_2_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_2_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_3[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_3_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x2D,

0x02, 0x15,
0x00,
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x14,         
0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_3_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_3_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_4[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
                        
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
                        
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t test_sig_4_asn_encoded_expected[NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE - 1] = {
0x30, 0x2D,

0x02, 0x14,
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0x02, 0x15,
0x00,             
0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

uint8_t test_sig_4_decoded[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE];

uint8_t test_sig_4_decoded_expected[NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
};

/////////////////////////////////////////////////////////////////////////////////////////

uint8_t test_sig_5[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
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

uint8_t test_sig_5_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
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

uint8_t test_sig_5_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_5_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0xF1, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
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

uint8_t test_sig_6_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 2] = {
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

uint8_t test_sig_6_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_6_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
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

uint8_t test_sig_7[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
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

uint8_t test_sig_7_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1] = {
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

uint8_t test_sig_7_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_7_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
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

uint8_t test_sig_8[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE] = {
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

uint8_t test_sig_8_asn_encoded_expected[NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE - 1] = {
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

uint8_t test_sig_8_decoded[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE];

uint8_t test_sig_8_decoded_expected[NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE] = {
0x01, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09, 

0xF2, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19,
0x10, 0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01,
0x10, 0x09,
};





