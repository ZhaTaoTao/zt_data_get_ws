# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fixposition_driver_ros1/imubias.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class imubias(genpy.Message):
  _md5sum = "35ce34652f0847b6fbe7e55097d74211"
  _type = "fixposition_driver_ros1/imubias"
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
# Fixposition FP_A-IMUBIAS Message
#
#
####################################################################################################

Header header
int16 fusion_imu                     # Fusion measurement status: IMU (see below)
int16 imu_status                     # IMU bias status (see below)
int16 imu_noise                      # IMU variance status (see below)
int16 imu_conv                       # IMU convergence status (see below)
geometry_msgs/Vector3 bias_acc       # Accelerometer bias
geometry_msgs/Vector3 bias_gyr       # Gyroscope bias
geometry_msgs/Vector3 bias_cov_acc   # Accelerometer bias covariance
geometry_msgs/Vector3 bias_cov_gyr   # Gyroscope bias covariance


# Fusion measurement status (fusion_imu)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not used           |
# |   1   | Used               |
# |   2   | Degraded           |


# IMU bias status (imu_status)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not converged      |
# |   1   | Warmstarted        |
# |   2   | Rough convergence  |
# |   3   | Fine convergence   |


# IMU variance (imu_noise)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Reserved           |
# |   1   | Low noise          |
# |   2   | Medium noise       |
# |   3   | High noise         |
# | 4...7 | Reserved           |


# IMU accelerometer and gyroscope convergence (imu_conv)
#
# | Value | Description                      |
# |-------|----------------------------------|
# |  null | Info not available               |
# |   0   | Awaiting Fusion                  |
# |   1   | Awaiting IMU measurements        |
# |   2   | Insufficient global measurements |
# |   3   | Insufficient motion              |
# |   4   | Converging                       |
# | 5...6 | Reserved                         |
# |   7   | Idle                             |
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
  __slots__ = ['header','fusion_imu','imu_status','imu_noise','imu_conv','bias_acc','bias_gyr','bias_cov_acc','bias_cov_gyr']
  _slot_types = ['std_msgs/Header','int16','int16','int16','int16','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,fusion_imu,imu_status,imu_noise,imu_conv,bias_acc,bias_gyr,bias_cov_acc,bias_cov_gyr

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(imubias, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.fusion_imu is None:
        self.fusion_imu = 0
      if self.imu_status is None:
        self.imu_status = 0
      if self.imu_noise is None:
        self.imu_noise = 0
      if self.imu_conv is None:
        self.imu_conv = 0
      if self.bias_acc is None:
        self.bias_acc = geometry_msgs.msg.Vector3()
      if self.bias_gyr is None:
        self.bias_gyr = geometry_msgs.msg.Vector3()
      if self.bias_cov_acc is None:
        self.bias_cov_acc = geometry_msgs.msg.Vector3()
      if self.bias_cov_gyr is None:
        self.bias_cov_gyr = geometry_msgs.msg.Vector3()
    else:
      self.header = std_msgs.msg.Header()
      self.fusion_imu = 0
      self.imu_status = 0
      self.imu_noise = 0
      self.imu_conv = 0
      self.bias_acc = geometry_msgs.msg.Vector3()
      self.bias_gyr = geometry_msgs.msg.Vector3()
      self.bias_cov_acc = geometry_msgs.msg.Vector3()
      self.bias_cov_gyr = geometry_msgs.msg.Vector3()

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
      _x = self
      buff.write(_get_struct_4h12d().pack(_x.fusion_imu, _x.imu_status, _x.imu_noise, _x.imu_conv, _x.bias_acc.x, _x.bias_acc.y, _x.bias_acc.z, _x.bias_gyr.x, _x.bias_gyr.y, _x.bias_gyr.z, _x.bias_cov_acc.x, _x.bias_cov_acc.y, _x.bias_cov_acc.z, _x.bias_cov_gyr.x, _x.bias_cov_gyr.y, _x.bias_cov_gyr.z))
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
      if self.bias_acc is None:
        self.bias_acc = geometry_msgs.msg.Vector3()
      if self.bias_gyr is None:
        self.bias_gyr = geometry_msgs.msg.Vector3()
      if self.bias_cov_acc is None:
        self.bias_cov_acc = geometry_msgs.msg.Vector3()
      if self.bias_cov_gyr is None:
        self.bias_cov_gyr = geometry_msgs.msg.Vector3()
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
      _x = self
      start = end
      end += 104
      (_x.fusion_imu, _x.imu_status, _x.imu_noise, _x.imu_conv, _x.bias_acc.x, _x.bias_acc.y, _x.bias_acc.z, _x.bias_gyr.x, _x.bias_gyr.y, _x.bias_gyr.z, _x.bias_cov_acc.x, _x.bias_cov_acc.y, _x.bias_cov_acc.z, _x.bias_cov_gyr.x, _x.bias_cov_gyr.y, _x.bias_cov_gyr.z,) = _get_struct_4h12d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_4h12d().pack(_x.fusion_imu, _x.imu_status, _x.imu_noise, _x.imu_conv, _x.bias_acc.x, _x.bias_acc.y, _x.bias_acc.z, _x.bias_gyr.x, _x.bias_gyr.y, _x.bias_gyr.z, _x.bias_cov_acc.x, _x.bias_cov_acc.y, _x.bias_cov_acc.z, _x.bias_cov_gyr.x, _x.bias_cov_gyr.y, _x.bias_cov_gyr.z))
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
      if self.bias_acc is None:
        self.bias_acc = geometry_msgs.msg.Vector3()
      if self.bias_gyr is None:
        self.bias_gyr = geometry_msgs.msg.Vector3()
      if self.bias_cov_acc is None:
        self.bias_cov_acc = geometry_msgs.msg.Vector3()
      if self.bias_cov_gyr is None:
        self.bias_cov_gyr = geometry_msgs.msg.Vector3()
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
      _x = self
      start = end
      end += 104
      (_x.fusion_imu, _x.imu_status, _x.imu_noise, _x.imu_conv, _x.bias_acc.x, _x.bias_acc.y, _x.bias_acc.z, _x.bias_gyr.x, _x.bias_gyr.y, _x.bias_gyr.z, _x.bias_cov_acc.x, _x.bias_cov_acc.y, _x.bias_cov_acc.z, _x.bias_cov_gyr.x, _x.bias_cov_gyr.y, _x.bias_cov_gyr.z,) = _get_struct_4h12d().unpack(str[start:end])
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
_struct_4h12d = None
def _get_struct_4h12d():
    global _struct_4h12d
    if _struct_4h12d is None:
        _struct_4h12d = struct.Struct("<4h12d")
    return _struct_4h12d
