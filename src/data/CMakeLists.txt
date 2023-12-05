# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

add_evleader_module(data)

target_sources(${evleader_module_target} PRIVATE
  include/evleader/data/supervision.hpp
  src/supervision.cpp)
