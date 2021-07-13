// Generated by gencpp from file pub_sub_example/JointPositions.msg
// DO NOT EDIT!


#ifndef PUB_SUB_EXAMPLE_MESSAGE_JOINTPOSITIONS_H
#define PUB_SUB_EXAMPLE_MESSAGE_JOINTPOSITIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pub_sub_example
{
template <class ContainerAllocator>
struct JointPositions_
{
  typedef JointPositions_<ContainerAllocator> Type;

  JointPositions_()
    : joint_positions()  {
    }
  JointPositions_(const ContainerAllocator& _alloc)
    : joint_positions(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _joint_positions_type;
  _joint_positions_type joint_positions;





  typedef boost::shared_ptr< ::pub_sub_example::JointPositions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pub_sub_example::JointPositions_<ContainerAllocator> const> ConstPtr;

}; // struct JointPositions_

typedef ::pub_sub_example::JointPositions_<std::allocator<void> > JointPositions;

typedef boost::shared_ptr< ::pub_sub_example::JointPositions > JointPositionsPtr;
typedef boost::shared_ptr< ::pub_sub_example::JointPositions const> JointPositionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pub_sub_example::JointPositions_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pub_sub_example::JointPositions_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pub_sub_example

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'pub_sub_example': ['/home/shamaine/catkin_ws/src/pub_sub_example /msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pub_sub_example::JointPositions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pub_sub_example::JointPositions_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_sub_example::JointPositions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pub_sub_example::JointPositions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_sub_example::JointPositions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pub_sub_example::JointPositions_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pub_sub_example::JointPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a286ff40b196573b9ebf3999a2f8d438";
  }

  static const char* value(const ::pub_sub_example::JointPositions_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa286ff40b196573bULL;
  static const uint64_t static_value2 = 0x9ebf3999a2f8d438ULL;
};

template<class ContainerAllocator>
struct DataType< ::pub_sub_example::JointPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pub_sub_example/JointPositions";
  }

  static const char* value(const ::pub_sub_example::JointPositions_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pub_sub_example::JointPositions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] joint_positions\n\
";
  }

  static const char* value(const ::pub_sub_example::JointPositions_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pub_sub_example::JointPositions_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_positions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointPositions_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pub_sub_example::JointPositions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pub_sub_example::JointPositions_<ContainerAllocator>& v)
  {
    s << indent << "joint_positions[]" << std::endl;
    for (size_t i = 0; i < v.joint_positions.size(); ++i)
    {
      s << indent << "  joint_positions[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.joint_positions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PUB_SUB_EXAMPLE_MESSAGE_JOINTPOSITIONS_H
