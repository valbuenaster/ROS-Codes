# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pioneer2dx_ros/myGPSMessage.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class myGPSMessage(genpy.Message):
  _md5sum = "6cb97d1e605900e785858ea58cd96c67"
  _type = "pioneer2dx_ros/myGPSMessage"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string gpsOwner  
float64 sec
float64 nsec
float64 latitude_deg
float64 longitude_deg
float64 altitude
float64 velocity_east
float64 velocity_north
float64 velocity_up
"""
  __slots__ = ['gpsOwner','sec','nsec','latitude_deg','longitude_deg','altitude','velocity_east','velocity_north','velocity_up']
  _slot_types = ['string','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       gpsOwner,sec,nsec,latitude_deg,longitude_deg,altitude,velocity_east,velocity_north,velocity_up

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(myGPSMessage, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.gpsOwner is None:
        self.gpsOwner = ''
      if self.sec is None:
        self.sec = 0.
      if self.nsec is None:
        self.nsec = 0.
      if self.latitude_deg is None:
        self.latitude_deg = 0.
      if self.longitude_deg is None:
        self.longitude_deg = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.velocity_east is None:
        self.velocity_east = 0.
      if self.velocity_north is None:
        self.velocity_north = 0.
      if self.velocity_up is None:
        self.velocity_up = 0.
    else:
      self.gpsOwner = ''
      self.sec = 0.
      self.nsec = 0.
      self.latitude_deg = 0.
      self.longitude_deg = 0.
      self.altitude = 0.
      self.velocity_east = 0.
      self.velocity_north = 0.
      self.velocity_up = 0.

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
      _x = self.gpsOwner
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.sec, _x.nsec, _x.latitude_deg, _x.longitude_deg, _x.altitude, _x.velocity_east, _x.velocity_north, _x.velocity_up))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gpsOwner = str[start:end].decode('utf-8')
      else:
        self.gpsOwner = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.sec, _x.nsec, _x.latitude_deg, _x.longitude_deg, _x.altitude, _x.velocity_east, _x.velocity_north, _x.velocity_up,) = _get_struct_8d().unpack(str[start:end])
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
      _x = self.gpsOwner
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.sec, _x.nsec, _x.latitude_deg, _x.longitude_deg, _x.altitude, _x.velocity_east, _x.velocity_north, _x.velocity_up))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gpsOwner = str[start:end].decode('utf-8')
      else:
        self.gpsOwner = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.sec, _x.nsec, _x.latitude_deg, _x.longitude_deg, _x.altitude, _x.velocity_east, _x.velocity_north, _x.velocity_up,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
