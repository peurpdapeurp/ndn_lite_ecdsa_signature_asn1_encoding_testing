
#ifndef TEST_FUNCTIONS_H
#define TEST_FUNCTIONS_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#define TEST_ENCODER_BUFFER_LEN 500
#define TEST_NUM_NAME_COMPONENTS 5

bool check_all_tests_passed(bool *test_results, size_t test_results_len);

void run_basic_asn_encode_decode_test(const char *test_name,
                                      uint8_t *test_sig, uint32_t test_sig_len, uint32_t test_sig_buf_len,
                                      uint8_t *test_sig_decoded, uint32_t test_sig_decoded_buf_len,
                                      uint32_t test_sig_asn_encoded_probe_length_expected,
                                      uint8_t *test_sig_asn_encoded_expected, uint32_t test_sig_asn_encoded_expected_len,
                                      uint8_t *test_sig_decoded_expected, uint32_t test_sig_decoded_expected_len,
                                      bool *test_passed);

void run_ecdsa_sig_sign_verify_test(const char *test_name,
                                    uint8_t *test_ecc_pub_raw, uint32_t test_ecc_pub_raw_len,
                                    uint8_t *test_ecc_prv_raw, uint32_t test_ecc_prv_raw_len,
                                    bool *test_passed);

#endif // TEST_FUNCTIONS_H