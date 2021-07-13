// Generated by gencpp from file niryo_one_msgs/JoystickJointsAction.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_JOYSTICKJOINTSACTION_H
#define NIRYO_ONE_MSGS_MESSAGE_JOYSTICKJOINTSACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_one_msgs/JoystickJointsActionGoal.h>
#include <niryo_one_msgs/JoystickJointsActionResult.h>
#include <niryo_one_msgs/JoystickJointsActionFeedback.h>

namespace niryo_one_msgs
{
template <class ContainerAllocator>
struct JoystickJointsAction_
{
  typedef JoystickJointsAction_<ContainerAllocator> Type;

  JoystickJointsAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  JoystickJointsAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::niryo_one_msgs::JoystickJointsActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::niryo_one_msgs::JoystickJointsActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::niryo_one_msgs::JoystickJointsActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> const> ConstPtr;

}; // struct JoystickJointsAction_

typedef ::niryo_one_msgs::JoystickJointsAction_<std::allocator<void> > JoystickJointsAction;

typedef boost::shared_ptr< ::niryo_one_msgs::JoystickJointsAction > JoystickJointsActionPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::JoystickJointsAction const> JoystickJointsActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace niryo_one_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'niryo_one_msgs': ['/home/shamaine/catkin_ws/src/niryo_one_msgs/msg', '/home/shamaine/catkin_ws/devel/share/niryo_one_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c7c43117001b060356a224896b42a154";
  }

  static const char* value(const ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc7c43117001b0603ULL;
  static const uint64_t static_value2 = 0x56a224896b42a154ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/JoystickJointsAction";
  }

  static const char* value(const ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
JoystickJointsActionGoal action_goal\n\
JoystickJointsActionResult action_result\n\
JoystickJointsActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
JoystickJointsGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# goal\n\
float64[] joy_values\n\
float64 duration\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
JoystickJointsResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# result\n\
int32 has_succeeded\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
JoystickJointsFeedback feedback\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/JoystickJointsFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# feedback \n\
bool is_in_joints_limit\n\
\n\
";
  }

  static const char* value(const ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JoystickJointsAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::JoystickJointsAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::niryo_one_msgs::JoystickJointsActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::niryo_one_msgs::JoystickJointsActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::niryo_one_msgs::JoystickJointsActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_JOYSTICKJOINTSACTION_H
