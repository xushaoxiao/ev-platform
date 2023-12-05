# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

include_guard(GLOBAL)

include(GNUInstallDirs)

add_library(evleader INTERFACE)
add_library(evleader::evleader ALIAS evleader)
install(TARGETS evleader EXPORT evleader-targets)

export(EXPORT evleader-targets NAMESPACE evleader::)
configure_file("cmake/evleader-config.cmake" "." COPYONLY)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
  evleader-config-version.cmake COMPATIBILITY SameMajorVersion
)

install(
  EXPORT evleader-targets
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/evleader
  NAMESPACE evleader::
)

install(
  FILES cmake/evleader-config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/evleader-config-version.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/evleader
)

