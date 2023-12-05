# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

include_guard(GLOBAL)

include(set_evleader_target_properties)

# sets all nessary default things
function(add_evleader_executable executable_name)
  set(executable_target evleader-${executable_name})

  add_executable(${executable_target} ${ARGN})
  set_evleader_target_properties(${executable_target} PRIVATE)

  if (TARGET evleader)
    install(TARGETS ${executable_target} EXPORT evleader-targets)
  endif()

  set(evleader_executable_target
      ${executable_target}
      PARENT_SCOPE
  )
endfunction()
