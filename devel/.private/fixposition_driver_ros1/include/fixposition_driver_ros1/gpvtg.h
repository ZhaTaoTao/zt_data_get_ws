// Generated by gencpp from file fixposition_driver_ros1/gpvtg.msg
// DO NOT EDIT!


#ifndef FIXPOSITION_DRIVER_ROS1_MESSAGE_GPVTG_H
#define FIXPOSITION_DRIVER_ROS1_MESSAGE_GPVTG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fixposition_driver_ros1
{
template <class ContainerAllocator>
struct gpvtg_
{
  typedef gpvtg_<ContainerAllocator> Type;

  gpvtg_()
    : cog_true(0.0)
    , cog_ref_t(0)
    , cog_mag(0.0)
    , cog_ref_m(0)
    , sog_knot(0.0)
    , sog_unit_n(0)
    , sog_kph(0.0)
    , sog_unit_k(0)
    , mode(0)  {
    }
  gpvtg_(const ContainerAllocator& _alloc)
    : cog_true(0.0)
    , cog_ref_t(0)
    , cog_mag(0.0)
    , cog_ref_m(0)
    , sog_knot(0.0)
    , sog_unit_n(0)
    , sog_kph(0.0)
    , sog_unit_k(0)
    , mode(0)  {
  (void)_alloc;
    }



   typedef double _cog_true_type;
  _cog_true_type cog_true;

   typedef uint8_t _cog_ref_t_type;
  _cog_ref_t_type cog_ref_t;

   typedef double _cog_mag_type;
  _cog_mag_type cog_mag;

   typedef uint8_t _cog_ref_m_type;
  _cog_ref_m_type cog_ref_m;

   typedef double _sog_knot_type;
  _sog_knot_type sog_knot;

   typedef uint8_t _sog_unit_n_type;
  _sog_unit_n_type sog_unit_n;

   typedef double _sog_kph_type;
  _sog_kph_type sog_kph;

   typedef uint8_t _sog_unit_k_type;
  _sog_unit_k_type sog_unit_k;

   typedef uint8_t _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> const> ConstPtr;

}; // struct gpvtg_

typedef ::fixposition_driver_ros1::gpvtg_<std::allocator<void> > gpvtg;

typedef boost::shared_ptr< ::fixposition_driver_ros1::gpvtg > gpvtgPtr;
typedef boost::shared_ptr< ::fixposition_driver_ros1::gpvtg const> gpvtgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator2> & rhs)
{
  return lhs.cog_true == rhs.cog_true &&
    lhs.cog_ref_t == rhs.cog_ref_t &&
    lhs.cog_mag == rhs.cog_mag &&
    lhs.cog_ref_m == rhs.cog_ref_m &&
    lhs.sog_knot == rhs.sog_knot &&
    lhs.sog_unit_n == rhs.sog_unit_n &&
    lhs.sog_kph == rhs.sog_kph &&
    lhs.sog_unit_k == rhs.sog_unit_k &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator1> & lhs, const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fixposition_driver_ros1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a44dc6b882f07ff5b8c222767876cea2";
  }

  static const char* value(const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa44dc6b882f07ff5ULL;
  static const uint64_t static_value2 = 0xb8c222767876cea2ULL;
};

template<class ContainerAllocator>
struct DataType< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fixposition_driver_ros1/gpvtg";
  }

  static const char* value(const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
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
"# Fixposition NMEA-GP-VTG Message\n"
"#\n"
"#\n"
"####################################################################################################\n"
"\n"
"# Format | Field      | Unit    | Description\n"
"# -------|------------|---------|--------------------------------------------------------|\n"
"float64    cog_true   # [deg]   | Course over ground wrt. True North.\n"
"char       cog_ref_t  # [-]     | COG reference, always T (true).\n"
"float64    cog_mag    # [-]     | Course over ground w.r.t. Magnetic North, always null.\n"
"char       cog_ref_m  # [-]     | COG reference, always M (magnetic).\n"
"float64    sog_knot   # [knots] | Speed over ground in knots.\n"
"char       sog_unit_n # [-]     | SOG reference, always N (knots).\n"
"float64    sog_kph    # [km/h]  | Speed over ground in km/h.\n"
"char       sog_unit_k # [-]     | SOG reference, always K (km/h).\n"
"char       mode       # [-]     | Positioning system mode indicator (see below).\n"
"\n"
"# Mode table\n"
"#\n"
"# | ID | Signal                |\n"
"# |----|-----------------------|\n"
"# |  N | Data not valid        |\n"
"# |  E | Dead-reckoning        |\n"
"# |  D | Differential          |\n"
"# |  A | Autonomous            |\n"
"# |  M | Manual input not used |\n"
"# |  S | Simulator not used    |\n"
;
  }

  static const char* value(const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cog_true);
      stream.next(m.cog_ref_t);
      stream.next(m.cog_mag);
      stream.next(m.cog_ref_m);
      stream.next(m.sog_knot);
      stream.next(m.sog_unit_n);
      stream.next(m.sog_kph);
      stream.next(m.sog_unit_k);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gpvtg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fixposition_driver_ros1::gpvtg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fixposition_driver_ros1::gpvtg_<ContainerAllocator>& v)
  {
    s << indent << "cog_true: ";
    Printer<double>::stream(s, indent + "  ", v.cog_true);
    s << indent << "cog_ref_t: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cog_ref_t);
    s << indent << "cog_mag: ";
    Printer<double>::stream(s, indent + "  ", v.cog_mag);
    s << indent << "cog_ref_m: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cog_ref_m);
    s << indent << "sog_knot: ";
    Printer<double>::stream(s, indent + "  ", v.sog_knot);
    s << indent << "sog_unit_n: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sog_unit_n);
    s << indent << "sog_kph: ";
    Printer<double>::stream(s, indent + "  ", v.sog_kph);
    s << indent << "sog_unit_k: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sog_unit_k);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FIXPOSITION_DRIVER_ROS1_MESSAGE_GPVTG_H
