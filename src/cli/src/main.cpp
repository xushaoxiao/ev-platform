// SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
// SPDX-License-Identifier: MIT

#include "evleader/data/supervision.hpp"

#include <fmt/core.h>

int main(int /*argc*/, char * /*argv*/ []) {
  fmt::print("evleader version: {}\n", evleader::data::version());
  return 0;
}
