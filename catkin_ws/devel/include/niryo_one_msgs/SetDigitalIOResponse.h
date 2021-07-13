// Generated by gencpp from file niryo_one_msgs/SetDigitalIOResponse.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_SETDIGITALIORESPONSE_H
#define NIRYO_ONE_MSGS_MESSAGE_SETDIGITALIORESPONSE_H


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
struct SetDigitalIOResponse_
{
  typedef SetDigitalIOResponse_<ContainerAllocator> Type;

  SetDigitalIOResponse_()
    : status(0)
    , message()  {
    }
  SetDigitalIOResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetDigitalIOResponse_

typedef ::niryo_one_msgs::SetDigitalIOResponse_<std::allocator<void> > SetDigitalIOResponse;

typedef boost::shared_ptr< ::niryo_one_msgs::SetDigitalIOResponse > SetDigitalIOResponsePtr;
typedef boost::shared_ptr< ::niryo_one_msgs::SetDigitalIOResponse const> SetDigitalIOResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c1d00fb8b4e78420f43d93d5292a429";
  }

  static const char* value(const ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c1d00fb8b4e7842ULL;
  static const uint64_t static_value2 = 0x0f43d93d5292a429ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/SetDigitalIOResponse";
  }

  static const char* value(const ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n\
string message\n\
\n\
";
  }

  static const char* value(const ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetDigitalIOResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::SetDigitalIOResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_SETDIGITALIORESPONSE_H
