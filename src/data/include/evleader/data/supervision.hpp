// SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
// SPDX-License-Identifier: MIT

#pragma once

#include "evleader/data/export.hpp"

#include <string>

namespace evleader::data {

[[nodiscard]] EVLEADER_DATA_EXPORT std::string version() noexcept;

} // namespace evleader::data
