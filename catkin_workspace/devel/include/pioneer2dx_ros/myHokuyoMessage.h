// Generated by gencpp from file pioneer2dx_ros/myHokuyoMessage.msg
// DO NOT EDIT!


#ifndef PIONEER2DX_ROS_MESSAGE_MYHOKUYOMESSAGE_H
#define PIONEER2DX_ROS_MESSAGE_MYHOKUYOMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pioneer2dx_ros
{
template <class ContainerAllocator>
struct myHokuyoMessage_
{
  typedef myHokuyoMessage_<ContainerAllocator> Type;

  myHokuyoMessage_()
    : NRays(0)
    , angleRes(0.0)
    , angMax(0.0)
    , angMin(0.0)
    , ranges()  {
    }
  myHokuyoMessage_(const ContainerAllocator& _alloc)
    : NRays(0)
    , angleRes(0.0)
    , angMax(0.0)
    , angMin(0.0)
    , ranges(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _NRays_type;
  _NRays_type NRays;

   typedef double _angleRes_type;
  _angleRes_type angleRes;

   typedef double _angMax_type;
  _angMax_type angMax;

   typedef double _angMin_type;
  _angMin_type angMin;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _ranges_type;
  _ranges_type ranges;





  typedef boost::shared_ptr< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> const> ConstPtr;

}; // struct myHokuyoMessage_

typedef ::pioneer2dx_ros::myHokuyoMessage_<std::allocator<void> > myHokuyoMessage;

typedef boost::shared_ptr< ::pioneer2dx_ros::myHokuyoMessage > myHokuyoMessagePtr;
typedef boost::shared_ptr< ::pioneer2dx_ros::myHokuyoMessage const> myHokuyoMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pioneer2dx_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'pioneer2dx_ros': ['/home/luis/catkin_workspace/src/pioneer2dx_ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "504180b862ce8f5f0f4d7dac12b5a1d2";
  }

  static const char* value(const ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x504180b862ce8f5fULL;
  static const uint64_t static_value2 = 0x0f4d7dac12b5a1d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pioneer2dx_ros/myHokuyoMessage";
  }

  static const char* value(const ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 NRays\n"
"float64 angleRes\n"
"float64 angMax\n"
"float64 angMin\n"
"float64[] ranges\n"
;
  }

  static const char* value(const ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.NRays);
      stream.next(m.angleRes);
      stream.next(m.angMax);
      stream.next(m.angMin);
      stream.next(m.ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct myHokuyoMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pioneer2dx_ros::myHokuyoMessage_<ContainerAllocator>& v)
  {
    s << indent << "NRays: ";
    Printer<int16_t>::stream(s, indent + "  ", v.NRays);
    s << indent << "angleRes: ";
    Printer<double>::stream(s, indent + "  ", v.angleRes);
    s << indent << "angMax: ";
    Printer<double>::stream(s, indent + "  ", v.angMax);
    s << indent << "angMin: ";
    Printer<double>::stream(s, indent + "  ", v.angMin);
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIONEER2DX_ROS_MESSAGE_MYHOKUYOMESSAGE_H
