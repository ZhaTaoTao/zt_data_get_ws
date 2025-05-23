// Generated by gencpp from file fixposition_driver_ros1/CovWarn.msg
// DO NOT EDIT!


#ifndef FIXPOSITION_DRIVER_ROS1_MESSAGE_COVWARN_H
#define FIXPOSITION_DRIVER_ROS1_MESSAGE_COVWARN_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace fixposition_driver_ros1
{
template <class ContainerAllocator>
struct CovWarn_
{
  typedef CovWarn_<ContainerAllocator> Type;

  CovWarn_()
    : header()
    , jump()
    , covariance()  {
    }
  CovWarn_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , jump(_alloc)
    , covariance(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _jump_type;
  _jump_type jump;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _covariance_type;
  _covariance_type covariance;





  typedef boost::shared_ptr< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> const> ConstPtr;

}; // struct CovWarn_

typedef ::fixposition_driver_ros1::CovWarn_<std::allocator<void> > CovWarn;

typedef boost::shared_ptr< ::fixposition_driver_ros1::CovWarn > CovWarnPtr;
typedef boost::shared_ptr< ::fixposition_driver_ros1::CovWarn const> CovWarnConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.jump == rhs.jump &&
    lhs.covariance == rhs.covariance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fixposition_driver_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de2143400b8bddaa70419e57cc765055";
  }

  static const char* value(const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde2143400b8bddaaULL;
  static const uint64_t static_value2 = 0x70419e57cc765055ULL;
};

template<class ContainerAllocator>
struct DataType< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fixposition_driver_ros1/CovWarn";
  }

  static const char* value(const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
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
"# Fixposition Covariance Warning Message\n"
"#\n"
"#\n"
"####################################################################################################\n"
"\n"
"Header header\n"
"geometry_msgs/Vector3 jump         # Position change\n"
"geometry_msgs/Vector3 covariance   # Covariance\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.jump);
      stream.next(m.covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CovWarn_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fixposition_driver_ros1::CovWarn_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fixposition_driver_ros1::CovWarn_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "jump: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.jump);
    s << indent << "covariance: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.covariance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIXPOSITION_DRIVER_ROS1_MESSAGE_COVWARN_H
