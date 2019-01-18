
#ifndef ECDSA_SIGN_VERIFY_TESTS_H
#define ECDSA_SIGN_VERIFY_TESTS_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// returns true if all tests passed, false otherwise
bool run_ecdsa_sign_verify_tests();

typedef struct {
  char **test_names;
  uint32_t test_name_index;
  int ndn_ecdsa_curve;
  const uint8_t *ecc_pub_raw;
  uint32_t ecc_pub_raw_len;
  const uint8_t *ecc_prv_raw;
  uint32_t ecc_prv_raw_len;
  bool *passed;
} ecdsa_sign_verify_test_t;

#endif // ECDSA_SIGN_VERIFY_TESTS_H