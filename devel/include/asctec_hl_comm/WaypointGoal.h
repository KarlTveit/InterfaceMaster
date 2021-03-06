// Generated by gencpp from file asctec_hl_comm/WaypointGoal.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_WAYPOINTGOAL_H
#define ASCTEC_HL_COMM_MESSAGE_WAYPOINTGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Point32.h>

namespace asctec_hl_comm
{
template <class ContainerAllocator>
struct WaypointGoal_
{
  typedef WaypointGoal_<ContainerAllocator> Type;

  WaypointGoal_()
    : header()
    , goal_pos()
    , goal_yaw(0.0)
    , max_speed()
    , accuracy_position(0.0)
    , accuracy_orientation(0.0)
    , timeout(0.0)  {
    }
  WaypointGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_pos(_alloc)
    , goal_yaw(0.0)
    , max_speed(_alloc)
    , accuracy_position(0.0)
    , accuracy_orientation(0.0)
    , timeout(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _goal_pos_type;
  _goal_pos_type goal_pos;

   typedef float _goal_yaw_type;
  _goal_yaw_type goal_yaw;

   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _max_speed_type;
  _max_speed_type max_speed;

   typedef float _accuracy_position_type;
  _accuracy_position_type accuracy_position;

   typedef float _accuracy_orientation_type;
  _accuracy_orientation_type accuracy_orientation;

   typedef float _timeout_type;
  _timeout_type timeout;





  typedef boost::shared_ptr< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointGoal_

typedef ::asctec_hl_comm::WaypointGoal_<std::allocator<void> > WaypointGoal;

typedef boost::shared_ptr< ::asctec_hl_comm::WaypointGoal > WaypointGoalPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::WaypointGoal const> WaypointGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_pos == rhs.goal_pos &&
    lhs.goal_yaw == rhs.goal_yaw &&
    lhs.max_speed == rhs.max_speed &&
    lhs.accuracy_position == rhs.accuracy_position &&
    lhs.accuracy_orientation == rhs.accuracy_orientation &&
    lhs.timeout == rhs.timeout;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "507ec257de0ab6b6c1abb2c69409fbd5";
  }

  static const char* value(const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x507ec257de0ab6b6ULL;
  static const uint64_t static_value2 = 0xc1abb2c69409fbd5ULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/WaypointGoal";
  }

  static const char* value(const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"Header header\n"
"geometry_msgs/Point32   goal_pos\n"
"float32                 goal_yaw\n"
"geometry_msgs/Point32   max_speed\n"
"float32 				accuracy_position        # determines the radius around the goal within the goal is considered as reached\n"
"float32                 accuracy_orientation     # determines the range within the goal orientation is considered as reached, for the heli only yaw\n"
"float32                 timeout                  # timeout in [s] after which flying to the waypoint stops\n"
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
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_pos);
      stream.next(m.goal_yaw);
      stream.next(m.max_speed);
      stream.next(m.accuracy_position);
      stream.next(m.accuracy_orientation);
      stream.next(m.timeout);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::WaypointGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::WaypointGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pos);
    s << indent << "goal_yaw: ";
    Printer<float>::stream(s, indent + "  ", v.goal_yaw);
    s << indent << "max_speed: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_speed);
    s << indent << "accuracy_position: ";
    Printer<float>::stream(s, indent + "  ", v.accuracy_position);
    s << indent << "accuracy_orientation: ";
    Printer<float>::stream(s, indent + "  ", v.accuracy_orientation);
    s << indent << "timeout: ";
    Printer<float>::stream(s, indent + "  ", v.timeout);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_WAYPOINTGOAL_H
