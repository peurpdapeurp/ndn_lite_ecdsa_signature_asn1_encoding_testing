
#include "ecdsa-sig-sign-verify-tests.h"

#include "test-helpers.h"
#include "ecdsa-sig-sign-verify-tests-def.h"

#include "../../ndn-lite/encode/data.h"
#include "../../ndn-lite/encode/encoder.h"
#include "../../ndn-lite/encode/metainfo.h"
#include "../../ndn-lite/ndn-constants.h"
#include "../../ndn-lite/ndn-enums.h"
#include "../../ndn-lite/ndn-error-code.h"
#include "../../ndn-lite/security/ndn-lite-sec-utils.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

#define TEST_ENCODER_BUFFER_LEN 500
#define TEST_NUM_NAME_COMPONENTS 5

static uint8_t test_data_content[10] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};

static const char test_data_name_string[] = "/test/data";
static const char test_producer_identity_string[] = "edward";
static const uint32_t test_arbitrary_key_id = 666;

static name_component_t test_data_name_components[TEST_NUM_NAME_COMPONENTS];
static name_component_t test_producer_identity_name_components[TEST_NUM_NAME_COMPONENTS];

static uint8_t test_encoder_buffer[TEST_ENCODER_BUFFER_LEN];

static ndn_encoder_t test_encoder;
static ndn_data_t test_data;
static ndn_name_t test_producer_identity;
static ndn_ecc_prv_t test_ecc_prv_key;
static ndn_ecc_pub_t test_ecc_pub_key;

void _run_ecdsa_sig_sign_verify_test(ecdsa_sig_sign_verify_test_t *test);

bool run_ecdsa_sig_sign_verify_tests() {
  memset(ecdsa_sig_sign_verify_test_results, 0, sizeof(bool)*ECDSA_SIGN_VERIFY_NUM_TESTS);
  for (int i = 0; i < ECDSA_SIGN_VERIFY_NUM_TESTS; i++) {
    _run_ecdsa_sig_sign_verify_test(&ecdsa_sig_sign_verify_tests[i]);
  }
  return check_all_tests_passed(ecdsa_sig_sign_verify_test_results, ecdsa_sig_sign_verify_test_names,
                                ECDSA_SIGN_VERIFY_NUM_TESTS);
}

void _run_ecdsa_sig_sign_verify_test(ecdsa_sig_sign_verify_test_t *test) {

  ndn_security_init();

  char *test_name = test->test_names[test->test_name_index];

  int ret_val = -1;

  encoder_init(&test_encoder, test_encoder_buffer, TEST_ENCODER_BUFFER_LEN);

  ndn_name_init(&test_data.name, test_data_name_components, TEST_NUM_NAME_COMPONENTS);
  ndn_name_from_string(&test_data.name, test_data_name_string, sizeof(test_data_name_string));
  ndn_metainfo_init(&test_data.metainfo);
  ndn_data_set_content(&test_data, test_data_content, sizeof(test_data_content));

  ndn_name_init(&test_producer_identity, test_producer_identity_name_components, TEST_NUM_NAME_COMPONENTS);
  ndn_name_from_string(&test_producer_identity, test_producer_identity_string,
      sizeof(test_producer_identity_string));

  ndn_ecc_prv_init(&test_ecc_prv_key, test->ecc_prv_raw, test->ecc_prv_raw_len,
      test->ndn_ecdsa_curve, test_arbitrary_key_id);

  ret_val = ndn_data_tlv_encode_ecdsa_sign(&test_encoder, &test_data,
      &test_producer_identity, &test_ecc_prv_key);
  if (ret_val != 0) {
    NRF_APP_LOG("Failed to encode / ecdsa sign test ndn data packet.\n");
    return;
  }

  ndn_ecc_pub_init(&test_ecc_pub_key, test->ecc_pub_raw, test->ecc_pub_raw_len,
      test->ndn_ecdsa_curve, test_arbitrary_key_id);

  ret_val = ndn_data_tlv_decode_ecdsa_verify(&test_data, test_encoder.output_value,
      test_encoder.offset, &test_ecc_pub_key);
  if (ret_val == 0) {
    *test->passed = true;
  } else {
    NRF_APP_LOG("Failed to verify signature of encoded data, error code: %d\n", ret_val);
  }
}