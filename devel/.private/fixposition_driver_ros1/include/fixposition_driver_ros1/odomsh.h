// Generated by gencpp from file fixposition_driver_ros1/odomsh.msg
// DO NOT EDIT!


#ifndef FIXPOSITION_DRIVER_ROS1_MESSAGE_ODOMSH_H
#define FIXPOSITION_DRIVER_ROS1_MESSAGE_ODOMSH_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseWithCovariance.h>
#include <geometry_msgs/TwistWithCovariance.h>
#include <geometry_msgs/Vector3.h>

namespace fixposition_driver_ros1
{
template <class ContainerAllocator>
struct odomsh_
{
  typedef odomsh_<ContainerAllocator> Type;

  odomsh_()
    : header()
    , pose_frame()
    , kin_frame()
    , pose()
    , velocity()
    , acceleration()
    , fusion_status(0)
    , imu_bias_status(0)
    , gnss1_status(0)
    , gnss2_status(0)
    , wheelspeed_status(0)  {
    }
  odomsh_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pose_frame(_alloc)
    , kin_frame(_alloc)
    , pose(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)
    , fusion_status(0)
    , imu_bias_status(0)
    , gnss1_status(0)
    , gnss2_status(0)
    , wheelspeed_status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pose_frame_type;
  _pose_frame_type pose_frame;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _kin_frame_type;
  _kin_frame_type kin_frame;

   typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::TwistWithCovariance_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;

   typedef int16_t _fusion_status_type;
  _fusion_status_type fusion_status;

   typedef int16_t _imu_bias_status_type;
  _imu_bias_status_type imu_bias_status;

   typedef int16_t _gnss1_status_type;
  _gnss1_status_type gnss1_status;

   typedef int16_t _gnss2_status_type;
  _gnss2_status_type gnss2_status;

   typedef int16_t _wheelspeed_status_type;
  _wheelspeed_status_type wheelspeed_status;





  typedef boost::shared_ptr< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> const> ConstPtr;

}; // struct odomsh_

typedef ::fixposition_driver_ros1::odomsh_<std::allocator<void> > odomsh;

typedef boost::shared_ptr< ::fixposition_driver_ros1::odomsh > odomshPtr;
typedef boost::shared_ptr< ::fixposition_driver_ros1::odomsh const> odomshConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fixposition_driver_ros1::odomsh_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fixposition_driver_ros1::odomsh_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::odomsh_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pose_frame == rhs.pose_frame &&
    lhs.kin_frame == rhs.kin_frame &&
    lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration &&
    lhs.fusion_status == rhs.fusion_status &&
    lhs.imu_bias_status == rhs.imu_bias_status &&
    lhs.gnss1_status == rhs.gnss1_status &&
    lhs.gnss2_status == rhs.gnss2_status &&
    lhs.wheelspeed_status == rhs.wheelspeed_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fixposition_driver_ros1::odomsh_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::odomsh_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fixposition_driver_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eae2b348c8bfb758ec15b33f447d1eab";
  }

  static const char* value(const ::fixposition_driver_ros1::odomsh_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeae2b348c8bfb758ULL;
  static const uint64_t static_value2 = 0xec15b33f447d1eabULL;
};

template<class ContainerAllocator>
struct DataType< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fixposition_driver_ros1/odomsh";
  }

  static const char* value(const ::fixposition_driver_ros1::odomsh_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
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
"# Fixposition FP_A-ODOMSH Message\n"
"#\n"
"#\n"
"####################################################################################################\n"
"\n"
"Header header\n"
"string pose_frame                            # frame of the pose values [pose, quaternion]\n"
"string kin_frame                             # frame of the kinematic values [linear/angular velocity, acceleration]\n"
"geometry_msgs/PoseWithCovariance pose        # position, orientation\n"
"geometry_msgs/TwistWithCovariance velocity   # linear, angular\n"
"geometry_msgs/Vector3 acceleration           # linear acceleration\n"
"\n"
"int16 fusion_status                          # field for the fusion status\n"
"int16 imu_bias_status                        # field for the IMU bias status\n"
"int16 gnss1_status                           # field for the gnss1 status\n"
"int16 gnss2_status                           # field for the gnss2 status\n"
"int16 wheelspeed_status                      # field for the wheelspeed status\n"
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
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
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

  static const char* value(const ::fixposition_driver_ros1::odomsh_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pose_frame);
      stream.next(m.kin_frame);
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.acceleration);
      stream.next(m.fusion_status);
      stream.next(m.imu_bias_status);
      stream.next(m.gnss1_status);
      stream.next(m.gnss2_status);
      stream.next(m.wheelspeed_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct odomsh_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fixposition_driver_ros1::odomsh_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fixposition_driver_ros1::odomsh_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pose_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pose_frame);
    s << indent << "kin_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.kin_frame);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::TwistWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
    s << indent << "fusion_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.fusion_status);
    s << indent << "imu_bias_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.imu_bias_status);
    s << indent << "gnss1_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.gnss1_status);
    s << indent << "gnss2_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.gnss2_status);
    s << indent << "wheelspeed_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.wheelspeed_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIXPOSITION_DRIVER_ROS1_MESSAGE_ODOMSH_H
