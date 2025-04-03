// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gpgga {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.latitude = null;
      this.lat_ns = null;
      this.longitude = null;
      this.lon_ew = null;
      this.quality = null;
      this.num_sv = null;
      this.hdop = null;
      this.alt = null;
      this.alt_unit = null;
      this.diff_age = null;
      this.diff_sta = null;
      this.sentence = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('lat_ns')) {
        this.lat_ns = initObj.lat_ns
      }
      else {
        this.lat_ns = 0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('lon_ew')) {
        this.lon_ew = initObj.lon_ew
      }
      else {
        this.lon_ew = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('num_sv')) {
        this.num_sv = initObj.num_sv
      }
      else {
        this.num_sv = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('alt_unit')) {
        this.alt_unit = initObj.alt_unit
      }
      else {
        this.alt_unit = 0;
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0.0;
      }
      if (initObj.hasOwnProperty('diff_sta')) {
        this.diff_sta = initObj.diff_sta
      }
      else {
        this.diff_sta = '';
      }
      if (initObj.hasOwnProperty('sentence')) {
        this.sentence = initObj.sentence
      }
      else {
        this.sentence = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpgga
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [lat_ns]
    bufferOffset = _serializer.char(obj.lat_ns, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [lon_ew]
    bufferOffset = _serializer.char(obj.lon_ew, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int8(obj.quality, buffer, bufferOffset);
    // Serialize message field [num_sv]
    bufferOffset = _serializer.int8(obj.num_sv, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [alt_unit]
    bufferOffset = _serializer.char(obj.alt_unit, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.float64(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [diff_sta]
    bufferOffset = _serializer.string(obj.diff_sta, buffer, bufferOffset);
    // Serialize message field [sentence]
    bufferOffset = _serializer.string(obj.sentence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpgga
    let len;
    let data = new gpgga(null);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_ns]
    data.lat_ns = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_ew]
    data.lon_ew = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_sv]
    data.num_sv = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt_unit]
    data.alt_unit = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_sta]
    data.diff_sta = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sentence]
    data.sentence = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.time);
    length += _getByteLength(object.diff_sta);
    length += _getByteLength(object.sentence);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gpgga';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '923382eb309c5f8409774d790a9139d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ####################################################################################################
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpgga(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.lat_ns !== undefined) {
      resolved.lat_ns = msg.lat_ns;
    }
    else {
      resolved.lat_ns = 0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.lon_ew !== undefined) {
      resolved.lon_ew = msg.lon_ew;
    }
    else {
      resolved.lon_ew = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.num_sv !== undefined) {
      resolved.num_sv = msg.num_sv;
    }
    else {
      resolved.num_sv = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.alt_unit !== undefined) {
      resolved.alt_unit = msg.alt_unit;
    }
    else {
      resolved.alt_unit = 0
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0.0
    }

    if (msg.diff_sta !== undefined) {
      resolved.diff_sta = msg.diff_sta;
    }
    else {
      resolved.diff_sta = ''
    }

    if (msg.sentence !== undefined) {
      resolved.sentence = msg.sentence;
    }
    else {
      resolved.sentence = ''
    }

    return resolved;
    }
};

module.exports = gpgga;
