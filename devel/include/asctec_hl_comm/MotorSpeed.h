// Generated by gencpp from file asctec_hl_comm/MotorSpeed.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_MOTORSPEED_H
#define ASCTEC_HL_COMM_MESSAGE_MOTORSPEED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace asctec_hl_comm
{
template <class ContainerAllocator>
struct MotorSpeed_
{
  typedef MotorSpeed_<ContainerAllocator> Type;

  MotorSpeed_()
    : header()
    , motor_speed()  {
      motor_speed.assign(0);
  }
  MotorSpeed_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , motor_speed()  {
  (void)_alloc;
      motor_speed.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<int16_t, 6>  _motor_speed_type;
  _motor_speed_type motor_speed;





  typedef boost::shared_ptr< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> const> ConstPtr;

}; // struct MotorSpeed_

typedef ::asctec_hl_comm::MotorSpeed_<std::allocator<void> > MotorSpeed;

typedef boost::shared_ptr< ::asctec_hl_comm::MotorSpeed > MotorSpeedPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::MotorSpeed const> MotorSpeedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.motor_speed == rhs.motor_speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3070a95b3ba41b42ea1ab4ed7544fc82";
  }

  static const char* value(const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3070a95b3ba41b42ULL;
  static const uint64_t static_value2 = 0xea1ab4ed7544fc82ULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/MotorSpeed";
  }

  static const char* value(const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int16[6] motor_speed # motor speeds, rxplot doesn't like uint8 :( ...\n"
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

  static const char* value(const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.motor_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorSpeed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::MotorSpeed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::MotorSpeed_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "motor_speed[]" << std::endl;
    for (size_t i = 0; i < v.motor_speed.size(); ++i)
    {
      s << indent << "  motor_speed[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.motor_speed[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_MOTORSPEED_H
