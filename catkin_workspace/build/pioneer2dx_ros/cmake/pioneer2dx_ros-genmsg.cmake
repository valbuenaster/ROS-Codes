# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pioneer2dx_ros: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ipioneer2dx_ros:/home/luis/catkin_workspace/src/pioneer2dx_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pioneer2dx_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_custom_target(_pioneer2dx_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pioneer2dx_ros" "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" ""
)

get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_custom_target(_pioneer2dx_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pioneer2dx_ros" "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_custom_target(_pioneer2dx_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pioneer2dx_ros" "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_custom_target(_pioneer2dx_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pioneer2dx_ros" "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_cpp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_cpp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_cpp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(pioneer2dx_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pioneer2dx_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pioneer2dx_ros_generate_messages pioneer2dx_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_cpp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_cpp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_cpp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_cpp _pioneer2dx_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pioneer2dx_ros_gencpp)
add_dependencies(pioneer2dx_ros_gencpp pioneer2dx_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pioneer2dx_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_eus(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_eus(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_eus(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(pioneer2dx_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pioneer2dx_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pioneer2dx_ros_generate_messages pioneer2dx_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_eus _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_eus _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_eus _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_eus _pioneer2dx_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pioneer2dx_ros_geneus)
add_dependencies(pioneer2dx_ros_geneus pioneer2dx_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pioneer2dx_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_lisp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_lisp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_lisp(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(pioneer2dx_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pioneer2dx_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pioneer2dx_ros_generate_messages pioneer2dx_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_lisp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_lisp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_lisp _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_lisp _pioneer2dx_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pioneer2dx_ros_genlisp)
add_dependencies(pioneer2dx_ros_genlisp pioneer2dx_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pioneer2dx_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_nodejs(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_nodejs(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_nodejs(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pioneer2dx_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pioneer2dx_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pioneer2dx_ros_generate_messages pioneer2dx_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_nodejs _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_nodejs _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_nodejs _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_nodejs _pioneer2dx_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pioneer2dx_ros_gennodejs)
add_dependencies(pioneer2dx_ros_gennodejs pioneer2dx_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pioneer2dx_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_py(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_py(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
)
_generate_msg_py(pioneer2dx_ros
  "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
)

### Generating Services

### Generating Module File
_generate_module_py(pioneer2dx_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pioneer2dx_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pioneer2dx_ros_generate_messages pioneer2dx_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myHokuyoMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_py _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myPoseMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_py _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myIMUMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_py _pioneer2dx_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luis/catkin_workspace/src/pioneer2dx_ros/msg/myGPSMessage.msg" NAME_WE)
add_dependencies(pioneer2dx_ros_generate_messages_py _pioneer2dx_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pioneer2dx_ros_genpy)
add_dependencies(pioneer2dx_ros_genpy pioneer2dx_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pioneer2dx_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pioneer2dx_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pioneer2dx_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pioneer2dx_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pioneer2dx_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pioneer2dx_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pioneer2dx_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pioneer2dx_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pioneer2dx_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pioneer2dx_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pioneer2dx_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pioneer2dx_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pioneer2dx_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pioneer2dx_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pioneer2dx_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pioneer2dx_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
