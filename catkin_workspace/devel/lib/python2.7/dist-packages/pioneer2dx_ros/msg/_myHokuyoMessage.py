# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pioneer2dx_ros/myHokuyoMessage.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class myHokuyoMessage(genpy.Message):
  _md5sum = "504180b862ce8f5f0f4d7dac12b5a1d2"
  _type = "pioneer2dx_ros/myHokuyoMessage"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 NRays
float64 angleRes
float64 angMax
float64 angMin
float64[] ranges
"""
  __slots__ = ['NRays','angleRes','angMax','angMin','ranges']
  _slot_types = ['int16','float64','float64','float64','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       NRays,angleRes,angMax,angMin,ranges

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(myHokuyoMessage, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.NRays is None:
        self.NRays = 0
      if self.angleRes is None:
        self.angleRes = 0.
      if self.angMax is None:
        self.angMax = 0.
      if self.angMin is None:
        self.angMin = 0.
      if self.ranges is None:
        self.ranges = []
    else:
      self.NRays = 0
      self.angleRes = 0.
      self.angMax = 0.
      self.angMin = 0.
      self.ranges = []

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
      _x = self
      buff.write(_get_struct_h3d().pack(_x.NRays, _x.angleRes, _x.angMax, _x.angMin))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.ranges))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.NRays, _x.angleRes, _x.angMax, _x.angMin,) = _get_struct_h3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.ranges = struct.unpack(pattern, str[start:end])
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
      _x = self
      buff.write(_get_struct_h3d().pack(_x.NRays, _x.angleRes, _x.angMax, _x.angMin))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.ranges.tostring())
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
      _x = self
      start = end
      end += 26
      (_x.NRays, _x.angleRes, _x.angMax, _x.angMin,) = _get_struct_h3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.ranges = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h3d = None
def _get_struct_h3d():
    global _struct_h3d
    if _struct_h3d is None:
        _struct_h3d = struct.Struct("<h3d")
    return _struct_h3d