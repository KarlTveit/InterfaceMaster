// Generated by gencpp from file asctec_hl_comm/DoubleArrayStamped.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H
#define ASCTEC_HL_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H


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
struct DoubleArrayStamped_
{
  typedef DoubleArrayStamped_<ContainerAllocator> Type;

  DoubleArrayStamped_()
    : header()
    , data()  {
    }
  DoubleArrayStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> const> ConstPtr;

}; // struct DoubleArrayStamped_

typedef ::asctec_hl_comm::DoubleArrayStamped_<std::allocator<void> > DoubleArrayStamped;

typedef boost::shared_ptr< ::asctec_hl_comm::DoubleArrayStamped > DoubleArrayStampedPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::DoubleArrayStamped const> DoubleArrayStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb60495edd59d3fcf90e173153ae8a9a";
  }

  static const char* value(const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb60495edd59d3fcULL;
  static const uint64_t static_value2 = 0xf90e173153ae8a9aULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/DoubleArrayStamped";
  }

  static const char* value(const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header    header\n"
"float64[] data\n"
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

  static const char* value(const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoubleArrayStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::DoubleArrayStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H