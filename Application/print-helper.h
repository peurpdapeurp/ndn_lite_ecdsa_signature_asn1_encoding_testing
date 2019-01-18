
/*
 * Copyright (C) Edward Lu
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 *
 * See AUTHORS.md for complete list of NDN IOT PKG authors and contributors.
 */

#ifndef PRINT_HELPER_H
#define PRINT_HELPER_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

#define APP_LOG(...) printf(__VA_ARGS__)

void APP_LOG_HEX(const char *msg, const uint8_t *buf, size_t buf_len);

void print_test_results(bool *test_results, size_t test_results_len);

#endif // PRINT_HELPER_H