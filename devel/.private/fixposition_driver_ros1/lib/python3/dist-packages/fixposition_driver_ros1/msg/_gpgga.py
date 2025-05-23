# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fixposition_driver_ros1/gpgga.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gpgga(genpy.Message):
  _md5sum = "923382eb309c5f8409774d790a9139d8"
  _type = "fixposition_driver_ros1/gpgga"
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
# Fixposition NMEA-GP-GGA Message
#
#
####################################################################################################

# Format | Field     | Unit              | Description
# -------|-----------|-------------------|----------------------------------------------------------------------|
string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.
char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.
float64    longitude # [dddmm.mmmmm(mm)] | Longitude.
char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.
int8       quality   # [-]               | Quality indicator (see below).
int8       num_sv    # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.
float64    hdop      # [0.10-99.99]      | Horizontal dilution of precision.
float64    alt       # [m]               | Altitude (above ellipsoid).
char       alt_unit  # [-]               | Altitude unit, always M (metres).
float64    diff_age  # [-]               | Approximate age of differential data (last GPS MSM message received).
string     diff_sta  # [-]               | DGPS station ID (0000-1023).
string     sentence  # [-]               | ASCII string to be used by NTRIP clients.

# Quality indicator table
#
# | ID | Signal         |
# |----|----------------|
# |  0 | Invalid        |
# |  1 | Non-RTK fix    |
# |  4 | RTK fixed      |
# |  5 | RTK float      |
# |  6 | Dead-reckoning |
"""
  __slots__ = ['time','latitude','lat_ns','longitude','lon_ew','quality','num_sv','hdop','alt','alt_unit','diff_age','diff_sta','sentence']
  _slot_types = ['string','float64','char','float64','char','int8','int8','float64','float64','char','float64','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,latitude,lat_ns,longitude,lon_ew,quality,num_sv,hdop,alt,alt_unit,diff_age,diff_sta,sentence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gpgga, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = ''
      if self.latitude is None:
        self.latitude = 0.
      if self.lat_ns is None:
        self.lat_ns = 0
      if self.longitude is None:
        self.longitude = 0.
      if self.lon_ew is None:
        self.lon_ew = 0
      if self.quality is None:
        self.quality = 0
      if self.num_sv is None:
        self.num_sv = 0
      if self.hdop is None:
        self.hdop = 0.
      if self.alt is None:
        self.alt = 0.
      if self.alt_unit is None:
        self.alt_unit = 0
      if self.diff_age is None:
        self.diff_age = 0.
      if self.diff_sta is None:
        self.diff_sta = ''
      if self.sentence is None:
        self.sentence = ''
    else:
      self.time = ''
      self.latitude = 0.
      self.lat_ns = 0
      self.longitude = 0.
      self.lon_ew = 0
      self.quality = 0
      self.num_sv = 0
      self.hdop = 0.
      self.alt = 0.
      self.alt_unit = 0
      self.diff_age = 0.
      self.diff_sta = ''
      self.sentence = ''

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
      _x = self.time
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dBdB2b2dBd().pack(_x.latitude, _x.lat_ns, _x.longitude, _x.lon_ew, _x.quality, _x.num_sv, _x.hdop, _x.alt, _x.alt_unit, _x.diff_age))
      _x = self.diff_sta
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sentence
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
        self.time = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.time = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.latitude, _x.lat_ns, _x.longitude, _x.lon_ew, _x.quality, _x.num_sv, _x.hdop, _x.alt, _x.alt_unit, _x.diff_age,) = _get_struct_dBdB2b2dBd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.diff_sta = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.diff_sta = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sentence = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sentence = str[start:end]
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
      _x = self.time
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dBdB2b2dBd().pack(_x.latitude, _x.lat_ns, _x.longitude, _x.lon_ew, _x.quality, _x.num_sv, _x.hdop, _x.alt, _x.alt_unit, _x.diff_age))
      _x = self.diff_sta
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sentence
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
        self.time = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.time = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.latitude, _x.lat_ns, _x.longitude, _x.lon_ew, _x.quality, _x.num_sv, _x.hdop, _x.alt, _x.alt_unit, _x.diff_age,) = _get_struct_dBdB2b2dBd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.diff_sta = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.diff_sta = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sentence = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sentence = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_dBdB2b2dBd = None
def _get_struct_dBdB2b2dBd():
    global _struct_dBdB2b2dBd
    if _struct_dBdB2b2dBd is None:
        _struct_dBdB2b2dBd = struct.Struct("<dBdB2b2dBd")
    return _struct_dBdB2b2dBd
