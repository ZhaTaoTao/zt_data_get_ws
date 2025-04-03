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

class tp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tp_name = null;
      this.timebase = null;
      this.timeref = null;
      this.tp_tow_sec = null;
      this.tp_tow_psec = null;
      this.gps_leaps = null;
    }
    else {
      if (initObj.hasOwnProperty('tp_name')) {
        this.tp_name = initObj.tp_name
      }
      else {
        this.tp_name = '';
      }
      if (initObj.hasOwnProperty('timebase')) {
        this.timebase = initObj.timebase
      }
      else {
        this.timebase = '';
      }
      if (initObj.hasOwnProperty('timeref')) {
        this.timeref = initObj.timeref
      }
      else {
        this.timeref = '';
      }
      if (initObj.hasOwnProperty('tp_tow_sec')) {
        this.tp_tow_sec = initObj.tp_tow_sec
      }
      else {
        this.tp_tow_sec = 0;
      }
      if (initObj.hasOwnProperty('tp_tow_psec')) {
        this.tp_tow_psec = initObj.tp_tow_psec
      }
      else {
        this.tp_tow_psec = 0.0;
      }
      if (initObj.hasOwnProperty('gps_leaps')) {
        this.gps_leaps = initObj.gps_leaps
      }
      else {
        this.gps_leaps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tp
    // Serialize message field [tp_name]
    bufferOffset = _serializer.string(obj.tp_name, buffer, bufferOffset);
    // Serialize message field [timebase]
    bufferOffset = _serializer.string(obj.timebase, buffer, bufferOffset);
    // Serialize message field [timeref]
    bufferOffset = _serializer.string(obj.timeref, buffer, bufferOffset);
    // Serialize message field [tp_tow_sec]
    bufferOffset = _serializer.int64(obj.tp_tow_sec, buffer, bufferOffset);
    // Serialize message field [tp_tow_psec]
    bufferOffset = _serializer.float64(obj.tp_tow_psec, buffer, bufferOffset);
    // Serialize message field [gps_leaps]
    bufferOffset = _serializer.int64(obj.gps_leaps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tp
    let len;
    let data = new tp(null);
    // Deserialize message field [tp_name]
    data.tp_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timebase]
    data.timebase = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeref]
    data.timeref = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tp_tow_sec]
    data.tp_tow_sec = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tp_tow_psec]
    data.tp_tow_psec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_leaps]
    data.gps_leaps = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tp_name);
    length += _getByteLength(object.timebase);
    length += _getByteLength(object.timeref);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/tp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb47e0dd4a2fae13d470d2c34ba242f0';
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
    # Fixposition FP_A-TP Message
    #
    #
    ####################################################################################################
    
    string  tp_name                              # Timepulse name (source)
    string  timebase                             # Time base (see below), or null if not available
    string  timeref                              # Time reference (see below), or null if not available
    int64   tp_tow_sec                           # Timepulse time seconds of week, integer second part (0–604799), or null
    float64 tp_tow_psec                          # Timepulse time seconds of week, sub-second part (0.000000000000–0.999999999999), or null
    int64   gps_leaps                            # GPS leapseconds, or null if unknown
    
    
    # Values for timebase
    #
    # | Value | Description               |
    # |-------|---------------------------|
    # |  null | No timepulse alignment    |
    # |  GNSS | Timepulse aligned to GNSS |
    # |   UTC | Timepulse aligned to UTC  |
    
    
    # Values for timeref if timebase is GNSS
    #
    # | Value | Description                     |
    # |-------|---------------------------------|
    # |   GPS | Timepulse aligned to GPS        |
    # |   GAL | Timepulse aligned to Galileo    |
    # |   BDS | Timepulse aligned to BeiDou     |
    # |   GLO | Timepulse aligned to GLONASS    |
    # | OTHER | Timepulse aligned to other GNSS |
    
    
    # Values for timeref if timebase is UTC
    #
    # | Value | Description                                                                |
    # |-------|----------------------------------------------------------------------------|
    # |  NONE | Timepulse aligned to no UTC (no precise UTC parameters known yet)          |
    # |   CRL | Timepulse aligned to Communications Research Laboratory (CRL), Japan       |
    # |  NIST | Timepulse aligned to National Institute of Standards and Technology (NIST) |
    # |  USNO | Timepulse aligned to U.S. Naval Observatory (USNO)                         |
    # |  BIPM | Timepulse aligned to International Bureau of Weights and Measures (BIPM)   |
    # |    EU | Timepulse aligned to European laboratories                                 |
    # |    SU | Timepulse aligned to Former Soviet Union (SU)                              |
    # |  NTSC | Timepulse aligned to National Time Service Center (NTSC), China            |
    # | OTHER | Timepulse aligned to other/unknown UTC                                     |
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tp(null);
    if (msg.tp_name !== undefined) {
      resolved.tp_name = msg.tp_name;
    }
    else {
      resolved.tp_name = ''
    }

    if (msg.timebase !== undefined) {
      resolved.timebase = msg.timebase;
    }
    else {
      resolved.timebase = ''
    }

    if (msg.timeref !== undefined) {
      resolved.timeref = msg.timeref;
    }
    else {
      resolved.timeref = ''
    }

    if (msg.tp_tow_sec !== undefined) {
      resolved.tp_tow_sec = msg.tp_tow_sec;
    }
    else {
      resolved.tp_tow_sec = 0
    }

    if (msg.tp_tow_psec !== undefined) {
      resolved.tp_tow_psec = msg.tp_tow_psec;
    }
    else {
      resolved.tp_tow_psec = 0.0
    }

    if (msg.gps_leaps !== undefined) {
      resolved.gps_leaps = msg.gps_leaps;
    }
    else {
      resolved.gps_leaps = 0
    }

    return resolved;
    }
};

module.exports = tp;
