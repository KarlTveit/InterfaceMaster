// Generated by gencpp from file asctec_hl_comm/Wgs84ToEnuRequest.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_WGS84TOENUREQUEST_H
#define ASCTEC_HL_COMM_MESSAGE_WGS84TOENUREQUEST_H


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
struct Wgs84ToEnuRequest_
{
  typedef Wgs84ToEnuRequest_<ContainerAllocator> Type;

  Wgs84ToEnuRequest_()
    : lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
    }
  Wgs84ToEnuRequest_(const ContainerAllocator& _alloc)
    : lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
  (void)_alloc;
    }



   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef double _alt_type;
  _alt_type alt;





  typedef boost::shared_ptr< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Wgs84ToEnuRequest_

typedef ::asctec_hl_comm::Wgs84ToEnuRequest_<std::allocator<void> > Wgs84ToEnuRequest;

typedef boost::shared_ptr< ::asctec_hl_comm::Wgs84ToEnuRequest > Wgs84ToEnuRequestPtr;
typedef boost::shared_ptr< ::asctec_hl_comm::Wgs84ToEnuRequest const> Wgs84ToEnuRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator2> & rhs)
{
  return lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.alt == rhs.alt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator1> & lhs, const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace asctec_hl_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "800b265188e13fdc7e121024d9b6fa27";
  }

  static const char* value(const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x800b265188e13fdcULL;
  static const uint64_t static_value2 = 0x7e121024d9b6fa27ULL;
};

template<class ContainerAllocator>
struct DataType< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "asctec_hl_comm/Wgs84ToEnuRequest";
  }

  static const char* value(const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 lat\n"
"float64 lon\n"
"float64 alt\n"
;
  }

  static const char* value(const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.alt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Wgs84ToEnuRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::asctec_hl_comm::Wgs84ToEnuRequest_<ContainerAllocator>& v)
  {
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "alt: ";
    Printer<double>::stream(s, indent + "  ", v.alt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_WGS84TOENUREQUEST_H
