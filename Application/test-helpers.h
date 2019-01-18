
#ifndef TEST_HELPERS_H
#define TEST_HELPERS_H

#include <stdbool.h>
#include <stddef.h>

bool check_all_tests_passed(bool *test_results, char **test_names, size_t test_results_len);

#endif // TEST_HELPERS_H