// Generated by gencpp from file pioneer2dx_ros/myGPSMessage.msg
// DO NOT EDIT!


#ifndef PIONEER2DX_ROS_MESSAGE_MYGPSMESSAGE_H
#define PIONEER2DX_ROS_MESSAGE_MYGPSMESSAGE_H


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
struct myGPSMessage_
{
  typedef myGPSMessage_<ContainerAllocator> Type;

  myGPSMessage_()
    : gpsOwner()
    , sec(0.0)
    , nsec(0.0)
    , latitude_deg(0.0)
    , longitude_deg(0.0)
    , altitude(0.0)
    , velocity_east(0.0)
    , velocity_north(0.0)
    , velocity_up(0.0)  {
    }
  myGPSMessage_(const ContainerAllocator& _alloc)
    : gpsOwner(_alloc)
    , sec(0.0)
    , nsec(0.0)
    , latitude_deg(0.0)
    , longitude_deg(0.0)
    , altitude(0.0)
    , velocity_east(0.0)
    , velocity_north(0.0)
    , velocity_up(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gpsOwner_type;
  _gpsOwner_type gpsOwner;

   typedef double _sec_type;
  _sec_type sec;

   typedef double _nsec_type;
  _nsec_type nsec;

   typedef double _latitude_deg_type;
  _latitude_deg_type latitude_deg;

   typedef double _longitude_deg_type;
  _longitude_deg_type longitude_deg;

   typedef double _altitude_type;
  _altitude_type altitude;

   typedef double _velocity_east_type;
  _velocity_east_type velocity_east;

   typedef double _velocity_north_type;
  _velocity_north_type velocity_north;

   typedef double _velocity_up_type;
  _velocity_up_type velocity_up;





  typedef boost::shared_ptr< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> const> ConstPtr;

}; // struct myGPSMessage_

typedef ::pioneer2dx_ros::myGPSMessage_<std::allocator<void> > myGPSMessage;

typedef boost::shared_ptr< ::pioneer2dx_ros::myGPSMessage > myGPSMessagePtr;
typedef boost::shared_ptr< ::pioneer2dx_ros::myGPSMessage const> myGPSMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6cb97d1e605900e785858ea58cd96c67";
  }

  static const char* value(const ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6cb97d1e605900e7ULL;
  static const uint64_t static_value2 = 0x85858ea58cd96c67ULL;
};

template<class ContainerAllocator>
struct DataType< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pioneer2dx_ros/myGPSMessage";
  }

  static const char* value(const ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string gpsOwner  \n"
"float64 sec\n"
"float64 nsec\n"
"float64 latitude_deg\n"
"float64 longitude_deg\n"
"float64 altitude\n"
"float64 velocity_east\n"
"float64 velocity_north\n"
"float64 velocity_up\n"
;
  }

  static const char* value(const ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gpsOwner);
      stream.next(m.sec);
      stream.next(m.nsec);
      stream.next(m.latitude_deg);
      stream.next(m.longitude_deg);
      stream.next(m.altitude);
      stream.next(m.velocity_east);
      stream.next(m.velocity_north);
      stream.next(m.velocity_up);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct myGPSMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pioneer2dx_ros::myGPSMessage_<ContainerAllocator>& v)
  {
    s << indent << "gpsOwner: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gpsOwner);
    s << indent << "sec: ";
    Printer<double>::stream(s, indent + "  ", v.sec);
    s << indent << "nsec: ";
    Printer<double>::stream(s, indent + "  ", v.nsec);
    s << indent << "latitude_deg: ";
    Printer<double>::stream(s, indent + "  ", v.latitude_deg);
    s << indent << "longitude_deg: ";
    Printer<double>::stream(s, indent + "  ", v.longitude_deg);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
    s << indent << "velocity_east: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_east);
    s << indent << "velocity_north: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_north);
    s << indent << "velocity_up: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_up);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIONEER2DX_ROS_MESSAGE_MYGPSMESSAGE_H