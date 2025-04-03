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

class gprmc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.status = null;
      this.latitude = null;
      this.lat_ns = null;
      this.longitude = null;
      this.lon_ew = null;
      this.speed = null;
      this.course = null;
      this.date = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
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
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('course')) {
        this.course = initObj.course
      }
      else {
        this.course = 0.0;
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gprmc
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.char(obj.status, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [lat_ns]
    bufferOffset = _serializer.char(obj.lat_ns, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [lon_ew]
    bufferOffset = _serializer.char(obj.lon_ew, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [course]
    bufferOffset = _serializer.float64(obj.course, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.char(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gprmc
    let len;
    let data = new gprmc(null);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_ns]
    data.lat_ns = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_ew]
    data.lon_ew = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [course]
    data.course = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.time);
    length += _getByteLength(object.date);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gprmc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50641526ce3dc086b7d7754b7f9196df';
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
    # Fixposition NMEA-GP-RMC Message
    #
    #
    ####################################################################################################
    
    # Format | Field     | Unit              | Description
    # -------|-----------|-------------------|--------------------------------------------------------|
    string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
    char       status    # [-]               | Data validity status, A (data valid) or V (not valid).
    float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.
    char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.
    float64    longitude # [dddmm.mmmmm(mm)] | Longitude.
    char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.
    float64    speed     # [knots]           | Speed over ground.
    float64    course    # [deg]             | Course over ground (w.r.t. True North).
    string     date      # [ddmmyy]          | UTC date (day, month and year).
    char       mode      # [-]               | Positioning system mode indicator (see below).
    
    # Mode table
    #
    # | ID | Signal                |
    # |----|-----------------------|
    # |  N | Data not valid        |
    # |  E | Dead-reckoning        |
    # |  D | Differential          |
    # |  A | Autonomous            |
    # |  M | Manual input not used |
    # |  S | Simulator not used    |
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gprmc(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
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

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.course !== undefined) {
      resolved.course = msg.course;
    }
    else {
      resolved.course = 0.0
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

module.exports = gprmc;
