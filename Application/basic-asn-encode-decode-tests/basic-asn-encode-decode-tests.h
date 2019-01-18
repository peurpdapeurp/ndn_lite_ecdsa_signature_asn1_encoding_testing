/*
 * Copyright (C) Edward Lu
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 *
 * See AUTHORS.md for complete list of NDN IOT PKG authors and contributors.
 */

#ifndef BASIC_ASN_ENCODE_DECODE_TESTS_H
#define BASIC_ASN_ENCODE_DECODE_TESTS_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include "../../ndn-lite/ndn-constants.h"

// returns true if all tests passed, false otherwise
bool run_basic_asn_encode_decode_tests();

typedef struct {
  char **test_names;
  uint8_t test_name_index;
  const uint8_t *sig;
  uint32_t sig_len;
  uint32_t sig_buf_len;
  const uint8_t *sig_decoded;
  uint32_t sig_decoded_buf_len;
  uint32_t sig_asn_encoded_probe_length_expected;
  const uint8_t *sig_asn_encoded_expected;
  uint32_t sig_asn_encoded_expected_len;
  const uint8_t *sig_decoded_expected;
  uint32_t sig_decoded_expected_len;
  bool *passed;
} basic_asn_encode_decode_test_t;

#endif // BASIC_ASN_ENCODE_DECODE_TESTS_H