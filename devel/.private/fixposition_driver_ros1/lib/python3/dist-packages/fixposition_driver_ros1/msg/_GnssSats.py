# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fixposition_driver_ros1/GnssSats.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GnssSats(genpy.Message):
  _md5sum = "048fb6a4e516eca717a91a2a5ccba58b"
  _type = "fixposition_driver_ros1/GnssSats"
  _has_header = False  # flag to mark the presence of a Header object
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
# Fixposition GNSS satellite signal statistics message.
#
#
####################################################################################################

# Format | Field         | Unit    | Description
# -------|---------------|---------|------------------------------------|
string     constellation # [Hex]   | Signal ID (see below).
int16[]    sat_id        # [-]     | Satellite ID number.
int16[]    azim          # [deg]   | Satellite azimuth from true North.
int16[]    elev          # [deg]   | Satellite elevation.
int16[]    cno_l1        # [db-Hz] | Satellite SNR (C/No) for L1-band.
int16[]    cno_l2        # [db-Hz] | Satellite SNR (C/No) for L2-band.
"""
  __slots__ = ['constellation','sat_id','azim','elev','cno_l1','cno_l2']
  _slot_types = ['string','int16[]','int16[]','int16[]','int16[]','int16[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       constellation,sat_id,azim,elev,cno_l1,cno_l2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GnssSats, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.constellation is None:
        self.constellation = ''
      if self.sat_id is None:
        self.sat_id = []
      if self.azim is None:
        self.azim = []
      if self.elev is None:
        self.elev = []
      if self.cno_l1 is None:
        self.cno_l1 = []
      if self.cno_l2 is None:
        self.cno_l2 = []
    else:
      self.constellation = ''
      self.sat_id = []
      self.azim = []
      self.elev = []
      self.cno_l1 = []
      self.cno_l2 = []

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
      _x = self.constellation
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.sat_id)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.sat_id))
      length = len(self.azim)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.azim))
      length = len(self.elev)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.elev))
      length = len(self.cno_l1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.cno_l1))
      length = len(self.cno_l2)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.cno_l2))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.constellation = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.constellation = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.sat_id = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.azim = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.elev = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cno_l1 = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cno_l2 = s.unpack(str[start:end])
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
      _x = self.constellation
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.sat_id)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.sat_id.tostring())
      length = len(self.azim)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.azim.tostring())
      length = len(self.elev)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.elev.tostring())
      length = len(self.cno_l1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.cno_l1.tostring())
      length = len(self.cno_l2)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.cno_l2.tostring())
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.constellation = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.constellation = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.sat_id = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.azim = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.elev = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cno_l1 = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.cno_l2 = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
