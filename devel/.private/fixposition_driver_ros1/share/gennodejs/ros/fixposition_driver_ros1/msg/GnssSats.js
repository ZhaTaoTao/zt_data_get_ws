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

class GnssSats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.constellation = null;
      this.sat_id = null;
      this.azim = null;
      this.elev = null;
      this.cno_l1 = null;
      this.cno_l2 = null;
    }
    else {
      if (initObj.hasOwnProperty('constellation')) {
        this.constellation = initObj.constellation
      }
      else {
        this.constellation = '';
      }
      if (initObj.hasOwnProperty('sat_id')) {
        this.sat_id = initObj.sat_id
      }
      else {
        this.sat_id = [];
      }
      if (initObj.hasOwnProperty('azim')) {
        this.azim = initObj.azim
      }
      else {
        this.azim = [];
      }
      if (initObj.hasOwnProperty('elev')) {
        this.elev = initObj.elev
      }
      else {
        this.elev = [];
      }
      if (initObj.hasOwnProperty('cno_l1')) {
        this.cno_l1 = initObj.cno_l1
      }
      else {
        this.cno_l1 = [];
      }
      if (initObj.hasOwnProperty('cno_l2')) {
        this.cno_l2 = initObj.cno_l2
      }
      else {
        this.cno_l2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSats
    // Serialize message field [constellation]
    bufferOffset = _serializer.string(obj.constellation, buffer, bufferOffset);
    // Serialize message field [sat_id]
    bufferOffset = _arraySerializer.int16(obj.sat_id, buffer, bufferOffset, null);
    // Serialize message field [azim]
    bufferOffset = _arraySerializer.int16(obj.azim, buffer, bufferOffset, null);
    // Serialize message field [elev]
    bufferOffset = _arraySerializer.int16(obj.elev, buffer, bufferOffset, null);
    // Serialize message field [cno_l1]
    bufferOffset = _arraySerializer.int16(obj.cno_l1, buffer, bufferOffset, null);
    // Serialize message field [cno_l2]
    bufferOffset = _arraySerializer.int16(obj.cno_l2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSats
    let len;
    let data = new GnssSats(null);
    // Deserialize message field [constellation]
    data.constellation = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sat_id]
    data.sat_id = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [azim]
    data.azim = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [elev]
    data.elev = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [cno_l1]
    data.cno_l1 = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [cno_l2]
    data.cno_l2 = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.constellation);
    length += 2 * object.sat_id.length;
    length += 2 * object.azim.length;
    length += 2 * object.elev.length;
    length += 2 * object.cno_l1.length;
    length += 2 * object.cno_l2.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/GnssSats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '048fb6a4e516eca717a91a2a5ccba58b';
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssSats(null);
    if (msg.constellation !== undefined) {
      resolved.constellation = msg.constellation;
    }
    else {
      resolved.constellation = ''
    }

    if (msg.sat_id !== undefined) {
      resolved.sat_id = msg.sat_id;
    }
    else {
      resolved.sat_id = []
    }

    if (msg.azim !== undefined) {
      resolved.azim = msg.azim;
    }
    else {
      resolved.azim = []
    }

    if (msg.elev !== undefined) {
      resolved.elev = msg.elev;
    }
    else {
      resolved.elev = []
    }

    if (msg.cno_l1 !== undefined) {
      resolved.cno_l1 = msg.cno_l1;
    }
    else {
      resolved.cno_l1 = []
    }

    if (msg.cno_l2 !== undefined) {
      resolved.cno_l2 = msg.cno_l2;
    }
    else {
      resolved.cno_l2 = []
    }

    return resolved;
    }
};

module.exports = GnssSats;
