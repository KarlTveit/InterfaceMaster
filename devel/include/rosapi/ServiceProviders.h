// Generated by gencpp from file rosapi/ServiceProviders.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_SERVICEPROVIDERS_H
#define ROSAPI_MESSAGE_SERVICEPROVIDERS_H

#include <ros/service_traits.h>


#include <rosapi/ServiceProvidersRequest.h>
#include <rosapi/ServiceProvidersResponse.h>


namespace rosapi
{

struct ServiceProviders
{

typedef ServiceProvidersRequest Request;
typedef ServiceProvidersResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ServiceProviders
} // namespace rosapi


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosapi::ServiceProviders > {
  static const char* value()
  {
    return "f30b41d5e347454ae5483ee95eef5cc6";
  }

  static const char* value(const ::rosapi::ServiceProviders&) { return value(); }
};

template<>
struct DataType< ::rosapi::ServiceProviders > {
  static const char* value()
  {
    return "rosapi/ServiceProviders";
  }

  static const char* value(const ::rosapi::ServiceProviders&) { return value(); }
};


// service_traits::MD5Sum< ::rosapi::ServiceProvidersRequest> should match
// service_traits::MD5Sum< ::rosapi::ServiceProviders >
template<>
struct MD5Sum< ::rosapi::ServiceProvidersRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosapi::ServiceProviders >::value();
  }
  static const char* value(const ::rosapi::ServiceProvidersRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosapi::ServiceProvidersRequest> should match
// service_traits::DataType< ::rosapi::ServiceProviders >
template<>
struct DataType< ::rosapi::ServiceProvidersRequest>
{
  static const char* value()
  {
    return DataType< ::rosapi::ServiceProviders >::value();
  }
  static const char* value(const ::rosapi::ServiceProvidersRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosapi::ServiceProvidersResponse> should match
// service_traits::MD5Sum< ::rosapi::ServiceProviders >
template<>
struct MD5Sum< ::rosapi::ServiceProvidersResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosapi::ServiceProviders >::value();
  }
  static const char* value(const ::rosapi::ServiceProvidersResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosapi::ServiceProvidersResponse> should match
// service_traits::DataType< ::rosapi::ServiceProviders >
template<>
struct DataType< ::rosapi::ServiceProvidersResponse>
{
  static const char* value()
  {
    return DataType< ::rosapi::ServiceProviders >::value();
  }
  static const char* value(const ::rosapi::ServiceProvidersResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSAPI_MESSAGE_SERVICEPROVIDERS_H
