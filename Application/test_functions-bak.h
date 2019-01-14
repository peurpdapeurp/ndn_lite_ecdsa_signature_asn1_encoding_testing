
#ifndef TEST_FUNCTIONS_H
#define TEST_FUNCTIONS_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "../../ndn-lite/encode/data.h"
#include "../../ndn-lite/encode/encoder.h"
#include "../../ndn-lite/encode/metainfo.h"
#include "../../ndn-lite/ndn-constants.h"
#include "../../ndn-lite/ndn-enums.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

bool check_all_tests_passed(bool *test_results, size_t test_results_len);

void run_basic_asn_encode_decode_test(const char *test_name,
                                      uint8_t *test_sig, uint32_t test_sig_len, uint32_t test_sig_buf_len,
                                      uint8_t *test_sig_decoded, uint32_t test_sig_decoded_buf_len,
                                      uint32_t test_sig_asn_encoded_probe_length_expected,
                                      uint8_t *test_sig_asn_encoded_expected, uint32_t test_sig_asn_encoded_expected_len,
                                      uint8_t *test_sig_decoded_expected, uint32_t test_sig_decoded_expected_len,
                                      bool *test_passed);

void run_ecdsa_sig_sign_verify_test(const char *test_name,
                                    const uint8_t *test_ecc_pub_raw, uint32_t test_ecc_pub_raw_len,
                                    const uint8_t *test_ecc_prv_raw, uint32_t test_ecc_prv_raw_len,

                                    const uint8_t *test_data_content, uint32_t test_data_content_len,

                                    ndn_encoder_t *test_encoder, 
                                    uint8_t *test_encoder_buffer, uint32_t test_encoder_buffer_len,

                                    ndn_data_t *test_data, 
                                    const char *test_data_name_string, 
                                    uint32_t test_data_name_string_len,
                                    ndn_name_component_t *test_data_name_components,
                                    uint32_t test_data_name_components_len,

                                    ndn_name_t *test_producer_identity,
                                    const char *test_producer_identity_string,
                                    uint32_t test_producer_identity_string_len,
                                    ndn_name_component_t *test_producer_identity_name_components,
                                    uint32_t test_producer_identity_name_components_len,
                                    
                                    ndn_ecc_prv_t test_ecc_prv_key,
                                    ndn_ecc_pub_t test_ecc_pub_key,

                                    const uint32_t *test_arbitrary_key_id,    
                                                                    
                                    bool *test_passed);

#endif // TEST_FUNCTIONS_H