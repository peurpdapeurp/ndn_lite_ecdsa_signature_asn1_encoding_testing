/*
 * Copyright (C) Edward Lu
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 *
 * See AUTHORS.md for complete list of NDN IOT PKG authors and contributors.
 */

#ifndef HARDCODED_EXPERIMENTATION_H
#define HARDCODED_EXPERIMENTATION_H

#include <stdint.h>

// first integer requires no padding, second integer requires padding
extern uint32_t test_sig_1_asn_encoded_probe_length_expected;
extern uint8_t test_sig_1[48];
extern uint8_t test_sig_1_asn_encoded_expected[47];
extern uint8_t test_sig_1_decoded[40];
extern uint8_t test_sig_1_decoded_expected[40];

// first integer requires padding, second integer requires no padding
extern uint32_t test_sig_2_asn_encoded_probe_length_expected;
extern uint8_t test_sig_2[48];
extern uint8_t test_sig_2_asn_encoded_expected[47];
extern uint8_t test_sig_2_decoded[40];
extern uint8_t test_sig_2_decoded_expected[40];

// first integer requires no padding, second integer requires no padding
extern uint32_t test_sig_3_asn_encoded_probe_length_expected;
extern uint8_t test_sig_3[48];
extern uint8_t test_sig_3_asn_encoded_expected[46];
extern uint8_t test_sig_3_decoded[40];
extern uint8_t test_sig_3_decoded_expected[40];

// first integer requires padding, second integer requires padding
extern uint32_t test_sig_4_asn_encoded_probe_length_expected;
extern uint8_t test_sig_4[48];
extern uint8_t test_sig_4_asn_encoded_expected[48];
extern uint8_t test_sig_4_decoded[40];
extern uint8_t test_sig_4_decoded_expected[40];


#endif // HARDCODED_EXPERIMENTATION_H