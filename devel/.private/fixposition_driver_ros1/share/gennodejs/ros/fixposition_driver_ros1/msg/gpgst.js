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

class gpgst {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.rms_range = null;
      this.std_major = null;
      this.std_minor = null;
      this.angle_major = null;
      this.std_lat = null;
      this.std_lon = null;
      this.std_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('rms_range')) {
        this.rms_range = initObj.rms_range
      }
      else {
        this.rms_range = 0.0;
      }
      if (initObj.hasOwnProperty('std_major')) {
        this.std_major = initObj.std_major
      }
      else {
        this.std_major = 0.0;
      }
      if (initObj.hasOwnProperty('std_minor')) {
        this.std_minor = initObj.std_minor
      }
      else {
        this.std_minor = 0.0;
      }
      if (initObj.hasOwnProperty('angle_major')) {
        this.angle_major = initObj.angle_major
      }
      else {
        this.angle_major = 0.0;
      }
      if (initObj.hasOwnProperty('std_lat')) {
        this.std_lat = initObj.std_lat
      }
      else {
        this.std_lat = 0.0;
      }
      if (initObj.hasOwnProperty('std_lon')) {
        this.std_lon = initObj.std_lon
      }
      else {
        this.std_lon = 0.0;
      }
      if (initObj.hasOwnProperty('std_alt')) {
        this.std_alt = initObj.std_alt
      }
      else {
        this.std_alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpgst
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [rms_range]
    bufferOffset = _serializer.float64(obj.rms_range, buffer, bufferOffset);
    // Serialize message field [std_major]
    bufferOffset = _serializer.float64(obj.std_major, buffer, bufferOffset);
    // Serialize message field [std_minor]
    bufferOffset = _serializer.float64(obj.std_minor, buffer, bufferOffset);
    // Serialize message field [angle_major]
    bufferOffset = _serializer.float64(obj.angle_major, buffer, bufferOffset);
    // Serialize message field [std_lat]
    bufferOffset = _serializer.float64(obj.std_lat, buffer, bufferOffset);
    // Serialize message field [std_lon]
    bufferOffset = _serializer.float64(obj.std_lon, buffer, bufferOffset);
    // Serialize message field [std_alt]
    bufferOffset = _serializer.float64(obj.std_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpgst
    let len;
    let data = new gpgst(null);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rms_range]
    data.rms_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_major]
    data.std_major = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_minor]
    data.std_minor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_major]
    data.angle_major = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_lat]
    data.std_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_lon]
    data.std_lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_alt]
    data.std_alt = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.time);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gpgst';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3488fe86af0a80e28c42198845ea643a';
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
    # Fixposition NMEA-GP-GST Message
    #
    #
    ####################################################################################################
    
    # Format | Field       | Unit            | Description
    # -------|-------------|-----------------|------------------------------------------------------------------------------------|
    string     time        # [hhmmss.ss(ss)] | UTC time (hours, minutes and seconds).
    float64    rms_range   # [-]             | RMS value of the standard deviation of the range inputs to the navigation process.
    float64    std_major   # [m]             | Standard deviation of semi-major axis of error ellipse.
    float64    std_minor   # [m]             | Standard deviation of semi-minor axis of error ellipse.
    float64    angle_major # [deg]           | Angle of semi-major axis of error ellipse from true North.
    float64    std_lat     # [m]             | Standard deviation of latitude error.
    float64    std_lon     # [m]             | Standard deviation of longitude error.
    float64    std_alt     # [m]             | Standard deviation of altitude error.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpgst(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.rms_range !== undefined) {
      resolved.rms_range = msg.rms_range;
    }
    else {
      resolved.rms_range = 0.0
    }

    if (msg.std_major !== undefined) {
      resolved.std_major = msg.std_major;
    }
    else {
      resolved.std_major = 0.0
    }

    if (msg.std_minor !== undefined) {
      resolved.std_minor = msg.std_minor;
    }
    else {
      resolved.std_minor = 0.0
    }

    if (msg.angle_major !== undefined) {
      resolved.angle_major = msg.angle_major;
    }
    else {
      resolved.angle_major = 0.0
    }

    if (msg.std_lat !== undefined) {
      resolved.std_lat = msg.std_lat;
    }
    else {
      resolved.std_lat = 0.0
    }

    if (msg.std_lon !== undefined) {
      resolved.std_lon = msg.std_lon;
    }
    else {
      resolved.std_lon = 0.0
    }

    if (msg.std_alt !== undefined) {
      resolved.std_alt = msg.std_alt;
    }
    else {
      resolved.std_alt = 0.0
    }

    return resolved;
    }
};

module.exports = gpgst;
