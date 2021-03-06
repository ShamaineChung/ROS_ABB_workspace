// Generated by gencpp from file lcsr_nettools/HeaderSample.msg
// DO NOT EDIT!


#ifndef LCSR_NETTOOLS_MESSAGE_HEADERSAMPLE_H
#define LCSR_NETTOOLS_MESSAGE_HEADERSAMPLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace lcsr_nettools
{
template <class ContainerAllocator>
struct HeaderSample_
{
  typedef HeaderSample_<ContainerAllocator> Type;

  HeaderSample_()
    : header()
    , recv_time()  {
    }
  HeaderSample_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , recv_time()  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef ros::Time _recv_time_type;
  _recv_time_type recv_time;





  typedef boost::shared_ptr< ::lcsr_nettools::HeaderSample_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lcsr_nettools::HeaderSample_<ContainerAllocator> const> ConstPtr;

}; // struct HeaderSample_

typedef ::lcsr_nettools::HeaderSample_<std::allocator<void> > HeaderSample;

typedef boost::shared_ptr< ::lcsr_nettools::HeaderSample > HeaderSamplePtr;
typedef boost::shared_ptr< ::lcsr_nettools::HeaderSample const> HeaderSampleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lcsr_nettools::HeaderSample_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lcsr_nettools

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lcsr_nettools': ['/home/shamaine/catkin_ws/src/lcsr_nettools/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lcsr_nettools::HeaderSample_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcsr_nettools::HeaderSample_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcsr_nettools::HeaderSample_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
{
  static const char* value()
  {
    return "911218caa31c03d4d7aa8f57a7bb8a69";
  }

  static const char* value(const ::lcsr_nettools::HeaderSample_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x911218caa31c03d4ULL;
  static const uint64_t static_value2 = 0xd7aa8f57a7bb8a69ULL;
};

template<class ContainerAllocator>
struct DataType< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lcsr_nettools/HeaderSample";
  }

  static const char* value(const ::lcsr_nettools::HeaderSample_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The header of this sample\n\
std_msgs/Header header\n\
# The time this sample was received.\n\
time recv_time\n\
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
";
  }

  static const char* value(const ::lcsr_nettools::HeaderSample_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.recv_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HeaderSample_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lcsr_nettools::HeaderSample_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lcsr_nettools::HeaderSample_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "recv_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.recv_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LCSR_NETTOOLS_MESSAGE_HEADERSAMPLE_H
