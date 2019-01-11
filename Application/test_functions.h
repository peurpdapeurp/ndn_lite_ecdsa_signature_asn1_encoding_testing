
#ifndef TEST_FUNCTIONS_H
#define TEST_FUNCTIONS_H

#include <stdint.h>
#include <stdbool.h>

void run_test(const char *sig_name,
              uint8_t *test_sig, uint32_t test_sig_len, uint32_t test_sig_buf_len,
              uint8_t *test_sig_decoded, uint32_t test_sig_decoded_buf_len,
              uint32_t test_sig_asn_encoded_probe_length_expected,
              uint8_t *test_sig_asn_encoded_expected, uint32_t test_sig_asn_encoded_expected_len,
              uint8_t *test_sig_decoded_expected, uint32_t test_sig_decoded_expected_len,
              bool *test_sig_passed);

#endif // TEST_FUNCTIONS_H