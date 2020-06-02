// Generated by gencpp from file asctec_hl_comm/mav_ctrl_motorsRequest.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_MAV_CTRL_MOTORSREQUEST_H
#define ASCTEC_HL_COMM_MESSAGE_MAV_CTRL_MOTORSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace asctec_hl_comm
{
template <class ContainerAllocator>
struct mav_ctrl_motorsRequest_
{
  typedef mav_ctrl_motorsRequest_<ContainerAllocator> Type;

  mav_ctrl_motorsRequest_()
    : startMotors(false)  {
    }
  mav_ctrl_motorsRequest_(const ContainerAllocator& _alloc)
    : startMotors(false)  {
  (void)_alloc;
    }



   typedef uint8_t _startMotors_type;
  _startMotors_type startMotors;





  typedef boost::shared_ptr< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct mav_ctrl_motorsRequest_

typedef ::asctec_hl_comm::mav_ctrl_motorsRequest_<std::allocator<void> > mav_ctrl_motorsRequest;

typedef boost::shared_ptr< ::asctec_hl_comm::mav_ctrl_motorsRequest > mav_ctrl_motorsRequestPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::mav_ctrl_motorsRequest const> mav_ctrl_motorsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.startMotors == rhs.startMotors;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6076998c2a5ec9144368e0457caa79ef";
  }

  static const char* value(const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6076998c2a5ec914ULL;
  static const uint64_t static_value2 = 0x4368e0457caa79efULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/mav_ctrl_motorsRequest";
  }

  static const char* value(const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool      startMotors\n"
;
  }

  static const char* value(const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.startMotors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mav_ctrl_motorsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::mav_ctrl_motorsRequest_<ContainerAllocator>& v)
  {
    s << indent << "startMotors: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.startMotors);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_MAV_CTRL_MOTORSREQUEST_H