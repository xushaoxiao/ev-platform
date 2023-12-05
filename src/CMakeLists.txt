# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.25)

project(
  evleader
  VERSION 0.0.1
  LANGUAGES CXX
)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

include(evleader-install-targets)
include(add_evleader_module)
include(add_evleader_executable)

add_subdirectory(data)
add_subdirectory(cli)
