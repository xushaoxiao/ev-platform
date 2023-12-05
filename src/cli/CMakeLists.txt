# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

add_evleader_executable(cli)

target_sources(${evleader_executable_target} PRIVATE src/main.cpp)

target_link_libraries(${evleader_executable_target}
  PRIVATE
    evleader::data
)
