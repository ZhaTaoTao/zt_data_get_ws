// Generated by gencpp from file fixposition_driver_ros1/gpzda.msg
// DO NOT EDIT!


#ifndef FIXPOSITION_DRIVER_ROS1_MESSAGE_GPZDA_H
#define FIXPOSITION_DRIVER_ROS1_MESSAGE_GPZDA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace fixposition_driver_ros1
{
template <class ContainerAllocator>
struct gpzda_
{
  typedef gpzda_<ContainerAllocator> Type;

  gpzda_()
    : header()
    , time()
    , date()
    , local_hr(0)
    , local_min(0)  {
    }
  gpzda_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time(_alloc)
    , date(_alloc)
    , local_hr(0)
    , local_min(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _time_type;
  _time_type time;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _date_type;
  _date_type date;

   typedef int16_t _local_hr_type;
  _local_hr_type local_hr;

   typedef int16_t _local_min_type;
  _local_min_type local_min;





  typedef boost::shared_ptr< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> const> ConstPtr;

}; // struct gpzda_

typedef ::fixposition_driver_ros1::gpzda_<std::allocator<void> > gpzda;

typedef boost::shared_ptr< ::fixposition_driver_ros1::gpzda > gpzdaPtr;
typedef boost::shared_ptr< ::fixposition_driver_ros1::gpzda const> gpzdaConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fixposition_driver_ros1::gpzda_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fixposition_driver_ros1::gpzda_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::gpzda_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time == rhs.time &&
    lhs.date == rhs.date &&
    lhs.local_hr == rhs.local_hr &&
    lhs.local_min == rhs.local_min;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fixposition_driver_ros1::gpzda_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::gpzda_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fixposition_driver_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5aa4c52da2e45e51197dea2175085966";
  }

  static const char* value(const ::fixposition_driver_ros1::gpzda_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5aa4c52da2e45e51ULL;
  static const uint64_t static_value2 = 0x197dea2175085966ULL;
};

template<class ContainerAllocator>
struct DataType< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fixposition_driver_ros1/gpzda";
  }

  static const char* value(const ::fixposition_driver_ros1::gpzda_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
{
  static const char* value()
  {
    return "####################################################################################################\n"
"#\n"
"#    Copyright (c) 2023  ___     ___\n"
"#                       \\\\  \\\\  /  /\n"
"#                        \\\\  \\\\/  /\n"
"#                         /  /\\\\  \\\\\n"
"#                        /__/  \\\\__\\\\  Fixposition AG\n"
"#\n"
"####################################################################################################\n"
"#\n"
"# Fixposition NMEA-GP-ZDA Message\n"
"#\n"
"#\n"
"####################################################################################################\n"
"\n"
"# Format | Field     | Unit            | Description\n"
"# -------|-----------|-----------------|-------------------------------------------------------|\n"
"Header     header    # [ns]            | Specifies the ROS time and Euclidian reference frame.\n"
"string     time      # [hhmmss.ss(ss)] | UTC0 time (hours, minutes and seconds).\n"
"string     date      # [dd/mm/yyyy]    | Date (UTC0).\n"
"int16      local_hr  # [00+-13]        | Local zone hours, always 00 (= UTC).\n"
"int16      local_min # [00-59]         | Local zone minutes, always 00 (= UTC).\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::fixposition_driver_ros1::gpzda_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time);
      stream.next(m.date);
      stream.next(m.local_hr);
      stream.next(m.local_min);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gpzda_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fixposition_driver_ros1::gpzda_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fixposition_driver_ros1::gpzda_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.time);
    s << indent << "date: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.date);
    s << indent << "local_hr: ";
    Printer<int16_t>::stream(s, indent + "  ", v.local_hr);
    s << indent << "local_min: ";
    Printer<int16_t>::stream(s, indent + "  ", v.local_min);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIXPOSITION_DRIVER_ROS1_MESSAGE_GPZDA_H
