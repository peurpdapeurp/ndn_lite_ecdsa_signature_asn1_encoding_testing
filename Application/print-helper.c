
#include "print-helper.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

void APP_LOG_HEX(const char *msg, const uint8_t *buf, size_t buf_len) {
  APP_LOG(msg);
  APP_LOG("\n");
  int i;
  for (i = 0; i < buf_len; i++)
  {
    //if (i > 0) APP_LOG(":");
    APP_LOG("%02X", buf[i]);
  }
  APP_LOG("\n");
}

void print_test_results(bool *test_results, size_t test_results_len) {
  for (int i = 0; i < test_results_len; i++) {
    NRF_APP_LOG("Value of test %d: %d\n", i, test_results[i]);
  }
}