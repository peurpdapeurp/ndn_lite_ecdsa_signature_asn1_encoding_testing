
#include "test-helpers.h"

#include "../../ndn-lite/adaptation/ndn-nrf-ble-adaptation/nrf-logger.h"

static char test_passed_string[] = "PASSED";
static char test_failed_string[] = "FAILED";

bool check_all_tests_passed(bool *test_results, char **test_names, size_t test_results_len) {
  bool all_tests_passed = true;
  for (int i = 0; i < test_results_len; i++) {
    char *result_string = test_failed_string;
    if (test_results[i])
      result_string = test_passed_string;
    NRF_APP_LOG("[%s] %s \n", result_string, test_names[i]);
    if (test_results[i] != true) {
      all_tests_passed = false;
    }
  }
  return all_tests_passed;
}