# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lcsr_nettools: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ilcsr_nettools:/home/shamaine/catkin_ws/src/lcsr_nettools/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lcsr_nettools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_custom_target(_lcsr_nettools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcsr_nettools" "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" ""
)

get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_custom_target(_lcsr_nettools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcsr_nettools" "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" "lcsr_nettools/TopicMeasurements:std_msgs/Header:lcsr_nettools/StatisticsMeasurements"
)

get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_custom_target(_lcsr_nettools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcsr_nettools" "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_custom_target(_lcsr_nettools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcsr_nettools" "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" "lcsr_nettools/StatisticsMeasurements"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_cpp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_cpp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_cpp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
)

### Generating Services

### Generating Module File
_generate_module_cpp(lcsr_nettools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lcsr_nettools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lcsr_nettools_generate_messages lcsr_nettools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_cpp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_cpp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_cpp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_cpp _lcsr_nettools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcsr_nettools_gencpp)
add_dependencies(lcsr_nettools_gencpp lcsr_nettools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcsr_nettools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_eus(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_eus(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_eus(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
)

### Generating Services

### Generating Module File
_generate_module_eus(lcsr_nettools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lcsr_nettools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lcsr_nettools_generate_messages lcsr_nettools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_eus _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_eus _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_eus _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_eus _lcsr_nettools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcsr_nettools_geneus)
add_dependencies(lcsr_nettools_geneus lcsr_nettools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcsr_nettools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_lisp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_lisp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_lisp(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
)

### Generating Services

### Generating Module File
_generate_module_lisp(lcsr_nettools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lcsr_nettools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lcsr_nettools_generate_messages lcsr_nettools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_lisp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_lisp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_lisp _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_lisp _lcsr_nettools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcsr_nettools_genlisp)
add_dependencies(lcsr_nettools_genlisp lcsr_nettools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcsr_nettools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_nodejs(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_nodejs(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_nodejs(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lcsr_nettools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lcsr_nettools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lcsr_nettools_generate_messages lcsr_nettools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_nodejs _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_nodejs _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_nodejs _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_nodejs _lcsr_nettools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcsr_nettools_gennodejs)
add_dependencies(lcsr_nettools_gennodejs lcsr_nettools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcsr_nettools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_py(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_py(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
)
_generate_msg_py(lcsr_nettools
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg"
  "${MSG_I_FLAGS}"
  "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
)

### Generating Services

### Generating Module File
_generate_module_py(lcsr_nettools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lcsr_nettools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lcsr_nettools_generate_messages lcsr_nettools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/StatisticsMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_py _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicStatistics.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_py _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/HeaderSample.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_py _lcsr_nettools_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shamaine/catkin_ws/src/lcsr_nettools/msg/TopicMeasurements.msg" NAME_WE)
add_dependencies(lcsr_nettools_generate_messages_py _lcsr_nettools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcsr_nettools_genpy)
add_dependencies(lcsr_nettools_genpy lcsr_nettools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcsr_nettools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcsr_nettools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lcsr_nettools_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcsr_nettools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lcsr_nettools_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcsr_nettools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lcsr_nettools_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcsr_nettools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lcsr_nettools_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcsr_nettools
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lcsr_nettools_generate_messages_py std_msgs_generate_messages_py)
endif()
