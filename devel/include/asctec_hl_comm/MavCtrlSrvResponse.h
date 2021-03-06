// Generated by gencpp from file asctec_hl_comm/MavCtrlSrvResponse.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRVRESPONSE_H
#define ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <asctec_hl_comm/mav_ctrl.h>

namespace asctec_hl_comm
{
template <class ContainerAllocator>
struct MavCtrlSrvResponse_
{
  typedef MavCtrlSrvResponse_<ContainerAllocator> Type;

  MavCtrlSrvResponse_()
    : ctrl_result()  {
    }
  MavCtrlSrvResponse_(const ContainerAllocator& _alloc)
    : ctrl_result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::asctec_hl_comm::mav_ctrl_<ContainerAllocator>  _ctrl_result_type;
  _ctrl_result_type ctrl_result;





  typedef boost::shared_ptr< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MavCtrlSrvResponse_

typedef ::asctec_hl_comm::MavCtrlSrvResponse_<std::allocator<void> > MavCtrlSrvResponse;

typedef boost::shared_ptr< ::asctec_hl_comm::MavCtrlSrvResponse > MavCtrlSrvResponsePtr;
typedef boost::shared_ptr< ::asctec_hl_comm::MavCtrlSrvResponse const> MavCtrlSrvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ctrl_result == rhs.ctrl_result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b903b08125ca08bbbb20320238af4215";
  }

  static const char* value(const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb903b08125ca08bbULL;
  static const uint64_t static_value2 = 0xbb20320238af4215ULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/MavCtrlSrvResponse";
  }

  static const char* value(const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mav_ctrl ctrl_result\n"
"\n"
"================================================================================\n"
"MSG: asctec_hl_comm/mav_ctrl\n"
"Header header\n"
"\n"
"int8        type        #message type\n"
"\n"
"# control commands, all units in SI units !!!\n"
"# There are 3 operating modes of the helicopter:\n"
"# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity\n"
"#    Inputs must be in body-coordinates\n"
"#    Currently x~pitch, y~roll, z~thrust, units in rad and rad/s for yaw\n"
"# 2. Velocity: x, y, z, yaw correspond to x_dot etc...\n"
"#    Vehicle must have it's own pose estimation e.g. vision/GPS\n"
"#    Inputs must be in body-coordinates\n"
"#    Units in m/s and rad/s respectively\n"
"# 3. Position\n"
"#    Vehicle must have it's own pose estimation e.g. vision/GPS\n"
"#    Inputs in fixed coordinate system\n"
"#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint\n"
"\n"
"float32     x\n"
"float32     y\n"
"float32     z\n"
"float32     yaw\n"
"float32     v_max_xy\n"
"float32     v_max_z\n"
"\n"
"int8 acceleration = 1\n"
"int8 velocity = 2\n"
"int8 position = 3\n"
"int8 velocity_body = 4\n"
"int8 position_body = 5\n"
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

  static const char* value(const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ctrl_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MavCtrlSrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::MavCtrlSrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "ctrl_result: ";
    s << std::endl;
    Printer< ::asctec_hl_comm::mav_ctrl_<ContainerAllocator> >::stream(s, indent + "  ", v.ctrl_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRVRESPONSE_H
