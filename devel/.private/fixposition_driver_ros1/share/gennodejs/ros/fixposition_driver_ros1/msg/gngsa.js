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

class gngsa {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode_op = null;
      this.mode_nav = null;
      this.ids = null;
      this.pdop = null;
      this.hdop = null;
      this.vdop = null;
      this.gnss_id = null;
    }
    else {
      if (initObj.hasOwnProperty('mode_op')) {
        this.mode_op = initObj.mode_op
      }
      else {
        this.mode_op = 0;
      }
      if (initObj.hasOwnProperty('mode_nav')) {
        this.mode_nav = initObj.mode_nav
      }
      else {
        this.mode_nav = 0;
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('pdop')) {
        this.pdop = initObj.pdop
      }
      else {
        this.pdop = 0.0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('vdop')) {
        this.vdop = initObj.vdop
      }
      else {
        this.vdop = 0.0;
      }
      if (initObj.hasOwnProperty('gnss_id')) {
        this.gnss_id = initObj.gnss_id
      }
      else {
        this.gnss_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gngsa
    // Serialize message field [mode_op]
    bufferOffset = _serializer.char(obj.mode_op, buffer, bufferOffset);
    // Serialize message field [mode_nav]
    bufferOffset = _serializer.int8(obj.mode_nav, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int8(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [pdop]
    bufferOffset = _serializer.float64(obj.pdop, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    // Serialize message field [vdop]
    bufferOffset = _serializer.float64(obj.vdop, buffer, bufferOffset);
    // Serialize message field [gnss_id]
    bufferOffset = _serializer.int8(obj.gnss_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gngsa
    let len;
    let data = new gngsa(null);
    // Deserialize message field [mode_op]
    data.mode_op = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [mode_nav]
    data.mode_nav = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [pdop]
    data.pdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vdop]
    data.vdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gnss_id]
    data.gnss_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ids.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gngsa';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e04c2fa8cea888c64fc400d41a1a650';
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
    # Fixposition NMEA-GN-GSA Message
    #
    #
    ####################################################################################################
    
    # Format | Field    | Unit | Description
    # -------|----------|------|----------------------------------------------------------------------------------------------|
    char       mode_op  #  [-] | Operation mode: always A (automatic, allowed to automatically switch 2D/3D).
    int8       mode_nav #  [-] | Navigation mode: 1 (fix not available), 2 (2D) or 3 (3D).
    int8[]     ids      #  [-] | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.
    float64    pdop     #  [-] | Position dillution of precision.
    float64    hdop     #  [-] | Horizontal dillution of precision.
    float64    vdop     #  [-] | Vertical dillution of precision.
    int8       gnss_id  #  [-] | GNSS system ID: 1 (GPS, SBAS), 2 (GLONASS), 3 (Galileo), 4 (BeiDou), 5 (QZSS).
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gngsa(null);
    if (msg.mode_op !== undefined) {
      resolved.mode_op = msg.mode_op;
    }
    else {
      resolved.mode_op = 0
    }

    if (msg.mode_nav !== undefined) {
      resolved.mode_nav = msg.mode_nav;
    }
    else {
      resolved.mode_nav = 0
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.pdop !== undefined) {
      resolved.pdop = msg.pdop;
    }
    else {
      resolved.pdop = 0.0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.vdop !== undefined) {
      resolved.vdop = msg.vdop;
    }
    else {
      resolved.vdop = 0.0
    }

    if (msg.gnss_id !== undefined) {
      resolved.gnss_id = msg.gnss_id;
    }
    else {
      resolved.gnss_id = 0
    }

    return resolved;
    }
};

module.exports = gngsa;
