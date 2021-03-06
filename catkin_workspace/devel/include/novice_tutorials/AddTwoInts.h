// Generated by gencpp from file novice_tutorials/AddTwoInts.msg
// DO NOT EDIT!


#ifndef NOVICE_TUTORIALS_MESSAGE_ADDTWOINTS_H
#define NOVICE_TUTORIALS_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <novice_tutorials/AddTwoIntsRequest.h>
#include <novice_tutorials/AddTwoIntsResponse.h>


namespace novice_tutorials
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace novice_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::novice_tutorials::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::novice_tutorials::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::novice_tutorials::AddTwoInts > {
  static const char* value()
  {
    return "novice_tutorials/AddTwoInts";
  }

  static const char* value(const ::novice_tutorials::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::novice_tutorials::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::novice_tutorials::AddTwoInts > 
template<>
struct MD5Sum< ::novice_tutorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::novice_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::novice_tutorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::novice_tutorials::AddTwoIntsRequest> should match 
// service_traits::DataType< ::novice_tutorials::AddTwoInts > 
template<>
struct DataType< ::novice_tutorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::novice_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::novice_tutorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::novice_tutorials::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::novice_tutorials::AddTwoInts > 
template<>
struct MD5Sum< ::novice_tutorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::novice_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::novice_tutorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::novice_tutorials::AddTwoIntsResponse> should match 
// service_traits::DataType< ::novice_tutorials::AddTwoInts > 
template<>
struct DataType< ::novice_tutorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::novice_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::novice_tutorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NOVICE_TUTORIALS_MESSAGE_ADDTWOINTS_H
