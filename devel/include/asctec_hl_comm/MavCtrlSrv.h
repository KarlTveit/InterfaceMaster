// Generated by gencpp from file asctec_hl_comm/MavCtrlSrv.msg
// DO NOT EDIT!


#ifndef ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRV_H
#define ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRV_H

#include <ros/service_traits.h>


#include <asctec_hl_comm/MavCtrlSrvRequest.h>
#include <asctec_hl_comm/MavCtrlSrvResponse.h>


namespace asctec_hl_comm
{

struct MavCtrlSrv
{

typedef MavCtrlSrvRequest Request;
typedef MavCtrlSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MavCtrlSrv
} // namespace asctec_hl_comm


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::asctec_hl_comm::MavCtrlSrv > {
  static const char* value()
  {
    return "ed4ced4e777c3a84e6602a79aaabcdfe";
  }

  static const char* value(const ::asctec_hl_comm::MavCtrlSrv&) { return value(); }
};

template<>
struct DataType< ::asctec_hl_comm::MavCtrlSrv > {
  static const char* value()
  {
    return "asctec_hl_comm/MavCtrlSrv";
  }

  static const char* value(const ::asctec_hl_comm::MavCtrlSrv&) { return value(); }
};


// service_traits::MD5Sum< ::asctec_hl_comm::MavCtrlSrvRequest> should match
// service_traits::MD5Sum< ::asctec_hl_comm::MavCtrlSrv >
template<>
struct MD5Sum< ::asctec_hl_comm::MavCtrlSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::asctec_hl_comm::MavCtrlSrv >::value();
  }
  static const char* value(const ::asctec_hl_comm::MavCtrlSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::asctec_hl_comm::MavCtrlSrvRequest> should match
// service_traits::DataType< ::asctec_hl_comm::MavCtrlSrv >
template<>
struct DataType< ::asctec_hl_comm::MavCtrlSrvRequest>
{
  static const char* value()
  {
    return DataType< ::asctec_hl_comm::MavCtrlSrv >::value();
  }
  static const char* value(const ::asctec_hl_comm::MavCtrlSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::asctec_hl_comm::MavCtrlSrvResponse> should match
// service_traits::MD5Sum< ::asctec_hl_comm::MavCtrlSrv >
template<>
struct MD5Sum< ::asctec_hl_comm::MavCtrlSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::asctec_hl_comm::MavCtrlSrv >::value();
  }
  static const char* value(const ::asctec_hl_comm::MavCtrlSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::asctec_hl_comm::MavCtrlSrvResponse> should match
// service_traits::DataType< ::asctec_hl_comm::MavCtrlSrv >
template<>
struct DataType< ::asctec_hl_comm::MavCtrlSrvResponse>
{
  static const char* value()
  {
    return DataType< ::asctec_hl_comm::MavCtrlSrv >::value();
  }
  static const char* value(const ::asctec_hl_comm::MavCtrlSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASCTEC_HL_COMM_MESSAGE_MAVCTRLSRV_H
