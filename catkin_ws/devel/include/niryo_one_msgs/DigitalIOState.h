// Generated by gencpp from file niryo_one_msgs/DigitalIOState.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_DIGITALIOSTATE_H
#define NIRYO_ONE_MSGS_MESSAGE_DIGITALIOSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace niryo_one_msgs
{
template <class ContainerAllocator>
struct DigitalIOState_
{
  typedef DigitalIOState_<ContainerAllocator> Type;

  DigitalIOState_()
    : pins()
    , names()
    , modes()
    , states()  {
    }
  DigitalIOState_(const ContainerAllocator& _alloc)
    : pins(_alloc)
    , names(_alloc)
    , modes(_alloc)
    , states(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _pins_type;
  _pins_type pins;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _names_type;
  _names_type names;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _modes_type;
  _modes_type modes;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalIOState_

typedef ::niryo_one_msgs::DigitalIOState_<std::allocator<void> > DigitalIOState;

typedef boost::shared_ptr< ::niryo_one_msgs::DigitalIOState > DigitalIOStatePtr;
typedef boost::shared_ptr< ::niryo_one_msgs::DigitalIOState const> DigitalIOStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bfb33e3a012d1027925934dc7f71fdc3";
  }

  static const char* value(const ::niryo_one_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbfb33e3a012d1027ULL;
  static const uint64_t static_value2 = 0x925934dc7f71fdc3ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/DigitalIOState";
  }

  static const char* value(const ::niryo_one_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# GPIO pin\n\
int32[] pins\n\
# PIN names seen by user to make it simpler\n\
string[] names\n\
# IN/OUT\n\
int32[] modes\n\
# HIGH/LOW\n\
int32[] states\n\
";
  }

  static const char* value(const ::niryo_one_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pins);
      stream.next(m.names);
      stream.next(m.modes);
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalIOState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::DigitalIOState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::DigitalIOState_<ContainerAllocator>& v)
  {
    s << indent << "pins[]" << std::endl;
    for (size_t i = 0; i < v.pins.size(); ++i)
    {
      s << indent << "  pins[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.pins[i]);
    }
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "modes[]" << std::endl;
    for (size_t i = 0; i < v.modes.size(); ++i)
    {
      s << indent << "  modes[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.modes[i]);
    }
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_DIGITALIOSTATE_H
