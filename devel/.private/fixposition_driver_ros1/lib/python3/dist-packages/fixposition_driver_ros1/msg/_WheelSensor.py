# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fixposition_driver_ros1/WheelSensor.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class WheelSensor(genpy.Message):
  _md5sum = "80080356d0f1e51e2dbb0fca7fd5dc02"
  _type = "fixposition_driver_ros1/WheelSensor"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """####################################################################################################
#
#    Copyright (c) 2023  ___     ___
#                       \\  \\  /  /
#                        \\  \\/  /
#                         /  /\\  \\
#                        /__/  \\__\\  Fixposition AG
#
####################################################################################################
#
# Individual wheelspeed measurement
#
#
####################################################################################################
# Standard metadata
std_msgs/Header header

# Location of the wheelspeed measurement (one of: RC, FR, FL, RR, RL)
string location

# Velocity values in [mm/s] as integer 32bit
int32 vx
int32 vy
int32 vz

# Velocity validity
bool vx_valid
bool vy_valid
bool vz_valid

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','location','vx','vy','vz','vx_valid','vy_valid','vz_valid']
  _slot_types = ['std_msgs/Header','string','int32','int32','int32','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,location,vx,vy,vz,vx_valid,vy_valid,vz_valid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelSensor, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.location is None:
        self.location = ''
      if self.vx is None:
        self.vx = 0
      if self.vy is None:
        self.vy = 0
      if self.vz is None:
        self.vz = 0
      if self.vx_valid is None:
        self.vx_valid = False
      if self.vy_valid is None:
        self.vy_valid = False
      if self.vz_valid is None:
        self.vz_valid = False
    else:
      self.header = std_msgs.msg.Header()
      self.location = ''
      self.vx = 0
      self.vy = 0
      self.vz = 0
      self.vx_valid = False
      self.vy_valid = False
      self.vz_valid = False

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.location
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i3B().pack(_x.vx, _x.vy, _x.vz, _x.vx_valid, _x.vy_valid, _x.vz_valid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.location = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.location = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.vx, _x.vy, _x.vz, _x.vx_valid, _x.vy_valid, _x.vz_valid,) = _get_struct_3i3B().unpack(str[start:end])
      self.vx_valid = bool(self.vx_valid)
      self.vy_valid = bool(self.vy_valid)
      self.vz_valid = bool(self.vz_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.location
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i3B().pack(_x.vx, _x.vy, _x.vz, _x.vx_valid, _x.vy_valid, _x.vz_valid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.location = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.location = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.vx, _x.vy, _x.vz, _x.vx_valid, _x.vy_valid, _x.vz_valid,) = _get_struct_3i3B().unpack(str[start:end])
      self.vx_valid = bool(self.vx_valid)
      self.vy_valid = bool(self.vy_valid)
      self.vz_valid = bool(self.vz_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3i3B = None
def _get_struct_3i3B():
    global _struct_3i3B
    if _struct_3i3B is None:
        _struct_3i3B = struct.Struct("<3i3B")
    return _struct_3i3B
