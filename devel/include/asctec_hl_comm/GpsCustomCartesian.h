// Generated by gencpp from file asctec_hl_comm/GpsCustomCartesian.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_GPSCUSTOMCARTESIAN_H
#define ASCTEC_HL_COMM_MESSAGE_GPSCUSTOMCARTESIAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace asctec_hl_comm
{
template <class ContainerAllocator>
struct GpsCustomCartesian_
{
  typedef GpsCustomCartesian_<ContainerAllocator> Type;

  GpsCustomCartesian_()
    : header()
    , position()
    , position_covariance()
    , velocity_x(0.0)
    , velocity_y(0.0)
    , velocity_covariance()  {
      position_covariance.assign(0.0);

      velocity_covariance.assign(0.0);
  }
  GpsCustomCartesian_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , position(_alloc)
    , position_covariance()
    , velocity_x(0.0)
    , velocity_y(0.0)
    , velocity_covariance()  {
  (void)_alloc;
      position_covariance.assign(0.0);

      velocity_covariance.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef boost::array<double, 9>  _position_covariance_type;
  _position_covariance_type position_covariance;

   typedef double _velocity_x_type;
  _velocity_x_type velocity_x;

   typedef double _velocity_y_type;
  _velocity_y_type velocity_y;

   typedef boost::array<double, 4>  _velocity_covariance_type;
  _velocity_covariance_type velocity_covariance;





  typedef boost::shared_ptr< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> const> ConstPtr;

}; // struct GpsCustomCartesian_

typedef ::asctec_hl_comm::GpsCustomCartesian_<std::allocator<void> > GpsCustomCartesian;

typedef boost::shared_ptr< ::asctec_hl_comm::GpsCustomCartesian > GpsCustomCartesianPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::GpsCustomCartesian const> GpsCustomCartesianConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.position == rhs.position &&
    lhs.position_covariance == rhs.position_covariance &&
    lhs.velocity_x == rhs.velocity_x &&
    lhs.velocity_y == rhs.velocity_y &&
    lhs.velocity_covariance == rhs.velocity_covariance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5d2c0118ba9eb587c756024a82d4d4a6";
  }

  static const char* value(const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5d2c0118ba9eb587ULL;
  static const uint64_t static_value2 = 0xc756024a82d4d4a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/GpsCustomCartesian";
  }

  static const char* value(const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"Header header\n"
"\n"
"geometry_msgs/Point   position\n"
"float64[9]            position_covariance\n"
"float64               velocity_x\n"
"float64               velocity_y\n"
"float64[4]            velocity_covariance\n"
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
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.position);
      stream.next(m.position_covariance);
      stream.next(m.velocity_x);
      stream.next(m.velocity_y);
      stream.next(m.velocity_covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsCustomCartesian_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::GpsCustomCartesian_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "position_covariance[]" << std::endl;
    for (size_t i = 0; i < v.position_covariance.size(); ++i)
    {
      s << indent << "  position_covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.position_covariance[i]);
    }
    s << indent << "velocity_x: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_x);
    s << indent << "velocity_y: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_y);
    s << indent << "velocity_covariance[]" << std::endl;
    for (size_t i = 0; i < v.velocity_covariance.size(); ++i)
    {
      s << indent << "  velocity_covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocity_covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_GPSCUSTOMCARTESIAN_H
