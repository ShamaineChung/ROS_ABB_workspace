// Generated by gencpp from file lcsr_nettools/StatisticsMeasurements.msg
// DO NOT EDIT!


#ifndef LCSR_NETTOOLS_MESSAGE_STATISTICSMEASUREMENTS_H
#define LCSR_NETTOOLS_MESSAGE_STATISTICSMEASUREMENTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lcsr_nettools
{
template <class ContainerAllocator>
struct StatisticsMeasurements_
{
  typedef StatisticsMeasurements_<ContainerAllocator> Type;

  StatisticsMeasurements_()
    : avg(0.0)
    , std(0.0)
    , min(0.0)
    , max(0.0)  {
    }
  StatisticsMeasurements_(const ContainerAllocator& _alloc)
    : avg(0.0)
    , std(0.0)
    , min(0.0)
    , max(0.0)  {
  (void)_alloc;
    }



   typedef double _avg_type;
  _avg_type avg;

   typedef double _std_type;
  _std_type std;

   typedef double _min_type;
  _min_type min;

   typedef double _max_type;
  _max_type max;





  typedef boost::shared_ptr< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> const> ConstPtr;

}; // struct StatisticsMeasurements_

typedef ::lcsr_nettools::StatisticsMeasurements_<std::allocator<void> > StatisticsMeasurements;

typedef boost::shared_ptr< ::lcsr_nettools::StatisticsMeasurements > StatisticsMeasurementsPtr;
typedef boost::shared_ptr< ::lcsr_nettools::StatisticsMeasurements const> StatisticsMeasurementsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lcsr_nettools

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lcsr_nettools': ['/home/shamaine/catkin_ws/src/lcsr_nettools/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4354a53d5e13d816ed73d7269ee2cb2";
  }

  static const char* value(const ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4354a53d5e13d81ULL;
  static const uint64_t static_value2 = 0x6ed73d7269ee2cb2ULL;
};

template<class ContainerAllocator>
struct DataType< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lcsr_nettools/StatisticsMeasurements";
  }

  static const char* value(const ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 avg\n\
float64 std\n\
float64 min\n\
float64 max\n\
";
  }

  static const char* value(const ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.avg);
      stream.next(m.std);
      stream.next(m.min);
      stream.next(m.max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatisticsMeasurements_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lcsr_nettools::StatisticsMeasurements_<ContainerAllocator>& v)
  {
    s << indent << "avg: ";
    Printer<double>::stream(s, indent + "  ", v.avg);
    s << indent << "std: ";
    Printer<double>::stream(s, indent + "  ", v.std);
    s << indent << "min: ";
    Printer<double>::stream(s, indent + "  ", v.min);
    s << indent << "max: ";
    Printer<double>::stream(s, indent + "  ", v.max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LCSR_NETTOOLS_MESSAGE_STATISTICSMEASUREMENTS_H