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

class gpvtg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cog_true = null;
      this.cog_ref_t = null;
      this.cog_mag = null;
      this.cog_ref_m = null;
      this.sog_knot = null;
      this.sog_unit_n = null;
      this.sog_kph = null;
      this.sog_unit_k = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('cog_true')) {
        this.cog_true = initObj.cog_true
      }
      else {
        this.cog_true = 0.0;
      }
      if (initObj.hasOwnProperty('cog_ref_t')) {
        this.cog_ref_t = initObj.cog_ref_t
      }
      else {
        this.cog_ref_t = 0;
      }
      if (initObj.hasOwnProperty('cog_mag')) {
        this.cog_mag = initObj.cog_mag
      }
      else {
        this.cog_mag = 0.0;
      }
      if (initObj.hasOwnProperty('cog_ref_m')) {
        this.cog_ref_m = initObj.cog_ref_m
      }
      else {
        this.cog_ref_m = 0;
      }
      if (initObj.hasOwnProperty('sog_knot')) {
        this.sog_knot = initObj.sog_knot
      }
      else {
        this.sog_knot = 0.0;
      }
      if (initObj.hasOwnProperty('sog_unit_n')) {
        this.sog_unit_n = initObj.sog_unit_n
      }
      else {
        this.sog_unit_n = 0;
      }
      if (initObj.hasOwnProperty('sog_kph')) {
        this.sog_kph = initObj.sog_kph
      }
      else {
        this.sog_kph = 0.0;
      }
      if (initObj.hasOwnProperty('sog_unit_k')) {
        this.sog_unit_k = initObj.sog_unit_k
      }
      else {
        this.sog_unit_k = 0;
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
    // Serializes a message object of type gpvtg
    // Serialize message field [cog_true]
    bufferOffset = _serializer.float64(obj.cog_true, buffer, bufferOffset);
    // Serialize message field [cog_ref_t]
    bufferOffset = _serializer.char(obj.cog_ref_t, buffer, bufferOffset);
    // Serialize message field [cog_mag]
    bufferOffset = _serializer.float64(obj.cog_mag, buffer, bufferOffset);
    // Serialize message field [cog_ref_m]
    bufferOffset = _serializer.char(obj.cog_ref_m, buffer, bufferOffset);
    // Serialize message field [sog_knot]
    bufferOffset = _serializer.float64(obj.sog_knot, buffer, bufferOffset);
    // Serialize message field [sog_unit_n]
    bufferOffset = _serializer.char(obj.sog_unit_n, buffer, bufferOffset);
    // Serialize message field [sog_kph]
    bufferOffset = _serializer.float64(obj.sog_kph, buffer, bufferOffset);
    // Serialize message field [sog_unit_k]
    bufferOffset = _serializer.char(obj.sog_unit_k, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.char(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpvtg
    let len;
    let data = new gpvtg(null);
    // Deserialize message field [cog_true]
    data.cog_true = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cog_ref_t]
    data.cog_ref_t = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [cog_mag]
    data.cog_mag = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cog_ref_m]
    data.cog_ref_m = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [sog_knot]
    data.sog_knot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sog_unit_n]
    data.sog_unit_n = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [sog_kph]
    data.sog_kph = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sog_unit_k]
    data.sog_unit_k = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gpvtg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a44dc6b882f07ff5b8c222767876cea2';
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
    # Fixposition NMEA-GP-VTG Message
    #
    #
    ####################################################################################################
    
    # Format | Field      | Unit    | Description
    # -------|------------|---------|--------------------------------------------------------|
    float64    cog_true   # [deg]   | Course over ground wrt. True North.
    char       cog_ref_t  # [-]     | COG reference, always T (true).
    float64    cog_mag    # [-]     | Course over ground w.r.t. Magnetic North, always null.
    char       cog_ref_m  # [-]     | COG reference, always M (magnetic).
    float64    sog_knot   # [knots] | Speed over ground in knots.
    char       sog_unit_n # [-]     | SOG reference, always N (knots).
    float64    sog_kph    # [km/h]  | Speed over ground in km/h.
    char       sog_unit_k # [-]     | SOG reference, always K (km/h).
    char       mode       # [-]     | Positioning system mode indicator (see below).
    
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
    const resolved = new gpvtg(null);
    if (msg.cog_true !== undefined) {
      resolved.cog_true = msg.cog_true;
    }
    else {
      resolved.cog_true = 0.0
    }

    if (msg.cog_ref_t !== undefined) {
      resolved.cog_ref_t = msg.cog_ref_t;
    }
    else {
      resolved.cog_ref_t = 0
    }

    if (msg.cog_mag !== undefined) {
      resolved.cog_mag = msg.cog_mag;
    }
    else {
      resolved.cog_mag = 0.0
    }

    if (msg.cog_ref_m !== undefined) {
      resolved.cog_ref_m = msg.cog_ref_m;
    }
    else {
      resolved.cog_ref_m = 0
    }

    if (msg.sog_knot !== undefined) {
      resolved.sog_knot = msg.sog_knot;
    }
    else {
      resolved.sog_knot = 0.0
    }

    if (msg.sog_unit_n !== undefined) {
      resolved.sog_unit_n = msg.sog_unit_n;
    }
    else {
      resolved.sog_unit_n = 0
    }

    if (msg.sog_kph !== undefined) {
      resolved.sog_kph = msg.sog_kph;
    }
    else {
      resolved.sog_kph = 0.0
    }

    if (msg.sog_unit_k !== undefined) {
      resolved.sog_unit_k = msg.sog_unit_k;
    }
    else {
      resolved.sog_unit_k = 0
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

module.exports = gpvtg;
