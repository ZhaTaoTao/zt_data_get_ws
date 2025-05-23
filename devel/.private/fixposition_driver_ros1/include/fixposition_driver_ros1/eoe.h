// Generated by gencpp from file fixposition_driver_ros1/eoe.msg
// DO NOT EDIT!


#ifndef FIXPOSITION_DRIVER_ROS1_MESSAGE_EOE_H
#define FIXPOSITION_DRIVER_ROS1_MESSAGE_EOE_H


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
struct eoe_
{
  typedef eoe_<ContainerAllocator> Type;

  eoe_()
    : header()
    , epoch()  {
    }
  eoe_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , epoch(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _epoch_type;
  _epoch_type epoch;





  typedef boost::shared_ptr< ::fixposition_driver_ros1::eoe_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fixposition_driver_ros1::eoe_<ContainerAllocator> const> ConstPtr;

}; // struct eoe_

typedef ::fixposition_driver_ros1::eoe_<std::allocator<void> > eoe;

typedef boost::shared_ptr< ::fixposition_driver_ros1::eoe > eoePtr;
typedef boost::shared_ptr< ::fixposition_driver_ros1::eoe const> eoeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fixposition_driver_ros1::eoe_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fixposition_driver_ros1::eoe_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::eoe_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.epoch == rhs.epoch;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fixposition_driver_ros1::eoe_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::eoe_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fixposition_driver_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::eoe_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::eoe_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::eoe_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3d96e79f96082138c765108d4b32fdf5";
  }

  static const char* value(const ::fixposition_driver_ros1::eoe_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3d96e79f96082138ULL;
  static const uint64_t static_value2 = 0xc765108d4b32fdf5ULL;
};

template<class ContainerAllocator>
struct DataType< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fixposition_driver_ros1/eoe";
  }

  static const char* value(const ::fixposition_driver_ros1::eoe_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
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
"# Fixposition FP_A-EOE Message\n"
"#\n"
"#\n"
"####################################################################################################\n"
"\n"
"Header header\n"
"string epoch   # Indicates which epoch ended (FUSION, GNSS, GNSS1 or GNSS2)\n"
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

  static const char* value(const ::fixposition_driver_ros1::eoe_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.epoch);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct eoe_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fixposition_driver_ros1::eoe_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fixposition_driver_ros1::eoe_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "epoch: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.epoch);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIXPOSITION_DRIVER_ROS1_MESSAGE_EOE_H
