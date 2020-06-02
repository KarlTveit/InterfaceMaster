// Generated by gencpp from file dynamixel_workbench_msgs/DynamixelState.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELSTATE_H
#define DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dynamixel_workbench_msgs
{
template <class ContainerAllocator>
struct DynamixelState_
{
  typedef DynamixelState_<ContainerAllocator> Type;

  DynamixelState_()
    : name()
    , id(0)
    , present_position(0)
    , present_velocity(0)
    , present_current(0)  {
    }
  DynamixelState_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , id(0)
    , present_position(0)
    , present_velocity(0)
    , present_current(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _id_type;
  _id_type id;

   typedef int32_t _present_position_type;
  _present_position_type present_position;

   typedef int32_t _present_velocity_type;
  _present_velocity_type present_velocity;

   typedef int16_t _present_current_type;
  _present_current_type present_current;





  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> const> ConstPtr;

}; // struct DynamixelState_

typedef ::dynamixel_workbench_msgs::DynamixelState_<std::allocator<void> > DynamixelState;

typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelState > DynamixelStatePtr;
typedef boost::shared_ptr< ::dynamixel_workbench_msgs::DynamixelState const> DynamixelStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamixel_workbench_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'dynamixel_workbench_msgs': ['/home/karlmt/catkin_ws/src/dynamixel-workbench-msgs/dynamixel_workbench_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9a7ca26833f8d4ad5b00272b4226f36";
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9a7ca26833f8d4aULL;
  static const uint64_t static_value2 = 0xd5b00272b4226f36ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_workbench_msgs/DynamixelState";
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message includes basic data of dynamixel\n"
"\n"
"string name\n"
"uint8  id\n"
"\n"
"int32  present_position\n"
"int32  present_velocity\n"
"int16  present_current\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.id);
      stream.next(m.present_position);
      stream.next(m.present_velocity);
      stream.next(m.present_current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamixelState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_workbench_msgs::DynamixelState_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "present_position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.present_position);
    s << indent << "present_velocity: ";
    Printer<int32_t>::stream(s, indent + "  ", v.present_velocity);
    s << indent << "present_current: ";
    Printer<int16_t>::stream(s, indent + "  ", v.present_current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_DYNAMIXELSTATE_H
