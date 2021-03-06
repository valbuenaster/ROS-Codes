# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pioneer2dx_ros/myIMUMessage.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class myIMUMessage(genpy.Message):
  _md5sum = "03337626308ac1d60c46fa084c8af8ef"
  _type = "pioneer2dx_ros/myIMUMessage"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string entity_name
float64 sec
float64 nsec
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_acceleration

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['entity_name','sec','nsec','orientation','angular_velocity','linear_acceleration']
  _slot_types = ['string','float64','float64','geometry_msgs/Quaternion','geometry_msgs/Vector3','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       entity_name,sec,nsec,orientation,angular_velocity,linear_acceleration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(myIMUMessage, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.entity_name is None:
        self.entity_name = ''
      if self.sec is None:
        self.sec = 0.
      if self.nsec is None:
        self.nsec = 0.
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
    else:
      self.entity_name = ''
      self.sec = 0.
      self.nsec = 0.
      self.orientation = geometry_msgs.msg.Quaternion()
      self.angular_velocity = geometry_msgs.msg.Vector3()
      self.linear_acceleration = geometry_msgs.msg.Vector3()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.entity_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_12d().pack(_x.sec, _x.nsec, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.entity_name = str[start:end].decode('utf-8')
      else:
        self.entity_name = str[start:end]
      _x = self
      start = end
      end += 96
      (_x.sec, _x.nsec, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z,) = _get_struct_12d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.entity_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_12d().pack(_x.sec, _x.nsec, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.entity_name = str[start:end].decode('utf-8')
      else:
        self.entity_name = str[start:end]
      _x = self
      start = end
      end += 96
      (_x.sec, _x.nsec, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z,) = _get_struct_12d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12d = None
def _get_struct_12d():
    global _struct_12d
    if _struct_12d is None:
        _struct_12d = struct.Struct("<12d")
    return _struct_12d
