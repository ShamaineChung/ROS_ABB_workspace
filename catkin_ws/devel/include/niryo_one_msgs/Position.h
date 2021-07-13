// Generated by gencpp from file niryo_one_msgs/Position.msg
// DO NOT EDIT!


#ifndef NIRYO_ONE_MSGS_MESSAGE_POSITION_H
#define NIRYO_ONE_MSGS_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_one_msgs/RPY.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Quaternion.h>

namespace niryo_one_msgs
{
template <class ContainerAllocator>
struct Position_
{
  typedef Position_<ContainerAllocator> Type;

  Position_()
    : name()
    , joints()
    , rpy()
    , point()
    , quaternion()  {
    }
  Position_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , joints(_alloc)
    , rpy(_alloc)
    , point(_alloc)
    , quaternion(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _joints_type;
  _joints_type joints;

   typedef  ::niryo_one_msgs::RPY_<ContainerAllocator>  _rpy_type;
  _rpy_type rpy;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _quaternion_type;
  _quaternion_type quaternion;





  typedef boost::shared_ptr< ::niryo_one_msgs::Position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_one_msgs::Position_<ContainerAllocator> const> ConstPtr;

}; // struct Position_

typedef ::niryo_one_msgs::Position_<std::allocator<void> > Position;

typedef boost::shared_ptr< ::niryo_one_msgs::Position > PositionPtr;
typedef boost::shared_ptr< ::niryo_one_msgs::Position const> PositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_one_msgs::Position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_one_msgs::Position_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::niryo_one_msgs::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_one_msgs::Position_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::Position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_one_msgs::Position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::Position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_one_msgs::Position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_one_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0feca3eb53781851658482e6557e2045";
  }

  static const char* value(const ::niryo_one_msgs::Position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0feca3eb53781851ULL;
  static const uint64_t static_value2 = 0x658482e6557e2045ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_one_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_one_msgs/Position";
  }

  static const char* value(const ::niryo_one_msgs::Position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_one_msgs::Position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
\n\
float64[] joints \n\
niryo_one_msgs/RPY rpy\n\
geometry_msgs/Point point\n\
geometry_msgs/Quaternion quaternion\n\
\n\
\n\
================================================================================\n\
MSG: niryo_one_msgs/RPY\n\
# roll, pitch and yaw\n\
\n\
float64 roll\n\
float64 pitch\n\
float64 yaw\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::niryo_one_msgs::Position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_one_msgs::Position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.joints);
      stream.next(m.rpy);
      stream.next(m.point);
      stream.next(m.quaternion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_one_msgs::Position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_one_msgs::Position_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.joints[i]);
    }
    s << indent << "rpy: ";
    s << std::endl;
    Printer< ::niryo_one_msgs::RPY_<ContainerAllocator> >::stream(s, indent + "  ", v.rpy);
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
    s << indent << "quaternion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.quaternion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ONE_MSGS_MESSAGE_POSITION_H
