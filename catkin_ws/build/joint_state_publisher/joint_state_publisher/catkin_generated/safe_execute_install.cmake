execute_process(COMMAND "/home/shamaine/catkin_ws/build/joint_state_publisher/joint_state_publisher/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/shamaine/catkin_ws/build/joint_state_publisher/joint_state_publisher/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
