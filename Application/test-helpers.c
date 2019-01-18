
#include "test-helpers.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

bool check_all_tests_passed(bool *test_results, char **test_names, size_t test_results_len) {
  bool all_tests_passed = true;
  for (int i = 0; i < test_results_len; i++) {
    NRF_APP_LOG("Result of test %s: %d\n", test_names[i], test_results[i]);
    if (test_results[i] != true) {
      all_tests_passed = false;
    }
  }
  return all_tests_passed;
}