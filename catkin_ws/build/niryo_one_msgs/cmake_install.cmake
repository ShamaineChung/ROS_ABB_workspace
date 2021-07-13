# Install script for directory: /home/shamaine/catkin_ws/src/niryo_one_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shamaine/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/RPY.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/ShiftPose.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/RobotState.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/RobotMoveCommand.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/ToolCommand.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/ProcessState.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/HardwareStatus.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/LogStatus.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/DigitalIOState.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/SoftwareVersion.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/Sequence.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/TrajectoryPlan.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/MatlabMoveResult.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/Position.msg"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/msg/Trajectory.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/srv" TYPE FILE FILES
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SetInt.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/RobotMove.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ManageProcess.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SetLeds.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/GetInt.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/PingDxlTool.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/OpenGripper.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/CloseGripper.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/PullAirVacuumPump.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/PushAirVacuumPump.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SetDigitalIO.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/GetDigitalIO.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/GetSequenceList.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ManageSequence.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SetSequenceAutorun.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ManagePosition.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/GetPositionList.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ManageTrajectory.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/GetTrajectoryList.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SendCustomDxlValue.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/ChangeMotorConfig.srv"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/srv/SetString.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/action" TYPE FILE FILES
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/action/JoystickJoints.action"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/action/RobotMove.action"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/action/Tool.action"
    "/home/shamaine/catkin_ws/src/niryo_one_msgs/action/Sequence.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
    "/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/shamaine/catkin_ws/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shamaine/catkin_ws/devel/include/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shamaine/catkin_ws/devel/share/roseus/ros/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shamaine/catkin_ws/devel/share/common-lisp/ros/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shamaine/catkin_ws/devel/share/gennodejs/ros/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shamaine/catkin_ws/devel/lib/python2.7/dist-packages/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shamaine/catkin_ws/devel/lib/python2.7/dist-packages/niryo_one_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shamaine/catkin_ws/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/home/shamaine/catkin_ws/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES
    "/home/shamaine/catkin_ws/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig.cmake"
    "/home/shamaine/catkin_ws/build/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs" TYPE FILE FILES "/home/shamaine/catkin_ws/src/niryo_one_msgs/package.xml")
endif()

