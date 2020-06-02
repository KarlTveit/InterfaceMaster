// Generated by gencpp from file rosauth/AuthenticationRequest.msg
// DO NOT EDIT!


#ifndef ROSAUTH_MESSAGE_AUTHENTICATIONREQUEST_H
#define ROSAUTH_MESSAGE_AUTHENTICATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosauth
{
template <class ContainerAllocator>
struct AuthenticationRequest_
{
  typedef AuthenticationRequest_<ContainerAllocator> Type;

  AuthenticationRequest_()
    : mac()
    , client()
    , dest()
    , rand()
    , t()
    , level()
    , end()  {
    }
  AuthenticationRequest_(const ContainerAllocator& _alloc)
    : mac(_alloc)
    , client(_alloc)
    , dest(_alloc)
    , rand(_alloc)
    , t()
    , level(_alloc)
    , end()  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mac_type;
  _mac_type mac;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _client_type;
  _client_type client;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dest_type;
  _dest_type dest;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _rand_type;
  _rand_type rand;

   typedef ros::Time _t_type;
  _t_type t;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _level_type;
  _level_type level;

   typedef ros::Time _end_type;
  _end_type end;





  typedef boost::shared_ptr< ::rosauth::AuthenticationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosauth::AuthenticationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AuthenticationRequest_

typedef ::rosauth::AuthenticationRequest_<std::allocator<void> > AuthenticationRequest;

typedef boost::shared_ptr< ::rosauth::AuthenticationRequest > AuthenticationRequestPtr;
typedef boost::shared_ptr< ::rosauth::AuthenticationRequest const> AuthenticationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosauth::AuthenticationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosauth::AuthenticationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosauth::AuthenticationRequest_<ContainerAllocator1> & lhs, const ::rosauth::AuthenticationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mac == rhs.mac &&
    lhs.client == rhs.client &&
    lhs.dest == rhs.dest &&
    lhs.rand == rhs.rand &&
    lhs.t == rhs.t &&
    lhs.level == rhs.level &&
    lhs.end == rhs.end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosauth::AuthenticationRequest_<ContainerAllocator1> & lhs, const ::rosauth::AuthenticationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosauth

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosauth::AuthenticationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosauth::AuthenticationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosauth::AuthenticationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cad474945b8be70807460ba22a018b32";
  }

  static const char* value(const ::rosauth::AuthenticationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcad474945b8be708ULL;
  static const uint64_t static_value2 = 0x07460ba22a018b32ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosauth/AuthenticationRequest";
  }

  static const char* value(const ::rosauth::AuthenticationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"string mac\n"
"\n"
"string client\n"
"\n"
"string dest\n"
"\n"
"string rand\n"
"\n"
"time t\n"
"\n"
"string level\n"
"\n"
"time end\n"
;
  }

  static const char* value(const ::rosauth::AuthenticationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mac);
      stream.next(m.client);
      stream.next(m.dest);
      stream.next(m.rand);
      stream.next(m.t);
      stream.next(m.level);
      stream.next(m.end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AuthenticationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosauth::AuthenticationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosauth::AuthenticationRequest_<ContainerAllocator>& v)
  {
    s << indent << "mac: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mac);
    s << indent << "client: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.client);
    s << indent << "dest: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dest);
    s << indent << "rand: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.rand);
    s << indent << "t: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t);
    s << indent << "level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.level);
    s << indent << "end: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSAUTH_MESSAGE_AUTHENTICATIONREQUEST_H
