// Generated by gencpp from file pioneer2dx_ros/myPoseMessage.msg
// DO NOT EDIT!


#ifndef PIONEER2DX_ROS_MESSAGE_MYPOSEMESSAGE_H
#define PIONEER2DX_ROS_MESSAGE_MYPOSEMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Quaternion.h>

namespace pioneer2dx_ros
{
template <class ContainerAllocator>
struct myPoseMessage_
{
  typedef myPoseMessage_<ContainerAllocator> Type;

  myPoseMessage_()
    : modelName()
    , modelPosition()
    , modelOrientation()  {
    }
  myPoseMessage_(const ContainerAllocator& _alloc)
    : modelName(_alloc)
    , modelPosition(_alloc)
    , modelOrientation(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _modelName_type;
  _modelName_type modelName;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _modelPosition_type;
  _modelPosition_type modelPosition;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _modelOrientation_type;
  _modelOrientation_type modelOrientation;





  typedef boost::shared_ptr< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> const> ConstPtr;

}; // struct myPoseMessage_

typedef ::pioneer2dx_ros::myPoseMessage_<std::allocator<void> > myPoseMessage;

typedef boost::shared_ptr< ::pioneer2dx_ros::myPoseMessage > myPoseMessagePtr;
typedef boost::shared_ptr< ::pioneer2dx_ros::myPoseMessage const> myPoseMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65d7d8bec13b357d15269095ed5552b9";
  }

  static const char* value(const ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65d7d8bec13b357dULL;
  static const uint64_t static_value2 = 0x15269095ed5552b9ULL;
};

template<class ContainerAllocator>
struct DataType< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pioneer2dx_ros/myPoseMessage";
  }

  static const char* value(const ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string modelName\n"
"geometry_msgs/Vector3 modelPosition\n"
"geometry_msgs/Quaternion modelOrientation\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.modelName);
      stream.next(m.modelPosition);
      stream.next(m.modelOrientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct myPoseMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pioneer2dx_ros::myPoseMessage_<ContainerAllocator>& v)
  {
    s << indent << "modelName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.modelName);
    s << indent << "modelPosition: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.modelPosition);
    s << indent << "modelOrientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.modelOrientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PIONEER2DX_ROS_MESSAGE_MYPOSEMESSAGE_H
