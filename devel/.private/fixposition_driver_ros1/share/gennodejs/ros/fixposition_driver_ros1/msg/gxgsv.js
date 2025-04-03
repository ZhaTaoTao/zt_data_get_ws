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

class gxgsv {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentences = null;
      this.sent_num = null;
      this.num_sats = null;
      this.sat_id = null;
      this.elev = null;
      this.azim = null;
      this.cno = null;
      this.signal_id = null;
    }
    else {
      if (initObj.hasOwnProperty('sentences')) {
        this.sentences = initObj.sentences
      }
      else {
        this.sentences = 0;
      }
      if (initObj.hasOwnProperty('sent_num')) {
        this.sent_num = initObj.sent_num
      }
      else {
        this.sent_num = 0;
      }
      if (initObj.hasOwnProperty('num_sats')) {
        this.num_sats = initObj.num_sats
      }
      else {
        this.num_sats = 0;
      }
      if (initObj.hasOwnProperty('sat_id')) {
        this.sat_id = initObj.sat_id
      }
      else {
        this.sat_id = [];
      }
      if (initObj.hasOwnProperty('elev')) {
        this.elev = initObj.elev
      }
      else {
        this.elev = [];
      }
      if (initObj.hasOwnProperty('azim')) {
        this.azim = initObj.azim
      }
      else {
        this.azim = [];
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = [];
      }
      if (initObj.hasOwnProperty('signal_id')) {
        this.signal_id = initObj.signal_id
      }
      else {
        this.signal_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gxgsv
    // Serialize message field [sentences]
    bufferOffset = _serializer.int16(obj.sentences, buffer, bufferOffset);
    // Serialize message field [sent_num]
    bufferOffset = _serializer.int16(obj.sent_num, buffer, bufferOffset);
    // Serialize message field [num_sats]
    bufferOffset = _serializer.int32(obj.num_sats, buffer, bufferOffset);
    // Serialize message field [sat_id]
    bufferOffset = _arraySerializer.int16(obj.sat_id, buffer, bufferOffset, null);
    // Serialize message field [elev]
    bufferOffset = _arraySerializer.int16(obj.elev, buffer, bufferOffset, null);
    // Serialize message field [azim]
    bufferOffset = _arraySerializer.int16(obj.azim, buffer, bufferOffset, null);
    // Serialize message field [cno]
    bufferOffset = _arraySerializer.int16(obj.cno, buffer, bufferOffset, null);
    // Serialize message field [signal_id]
    bufferOffset = _serializer.string(obj.signal_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gxgsv
    let len;
    let data = new gxgsv(null);
    // Deserialize message field [sentences]
    data.sentences = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sent_num]
    data.sent_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [num_sats]
    data.num_sats = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sat_id]
    data.sat_id = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [elev]
    data.elev = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [azim]
    data.azim = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [cno]
    data.cno = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [signal_id]
    data.signal_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.sat_id.length;
    length += 2 * object.elev.length;
    length += 2 * object.azim.length;
    length += 2 * object.cno.length;
    length += _getByteLength(object.signal_id);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gxgsv';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c19e5f5ab3c6892027710db5940fb01';
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
    # Fixposition NMEA-GX-GSV Message
    #
    #
    ####################################################################################################
    
    # Format | Field     | Unit    | Description
    # -------|-----------|---------|-------------------------------------|
    int16      sentences # [-]     | Total number of sentences (1 to 9).
    int16      sent_num  # [-]     | Sentence number (1 to 9).
    int32      num_sats  # [-]     | Total number of satellites in view.
    int16[]    sat_id    # [-]     | Satellite ID number.               
    int16[]    elev      # [deg]   | Satellite elevation. 
    int16[]    azim      # [deg]   | Satellite azimuth from true North.
    int16[]    cno       # [db-Hz] | Satellite SNR (C/No).
    string     signal_id # [Hex]   | Signal ID (see below).
    
    # Signal ID table
    #
    # | ID | Signal                        |
    # |----|-------------------------------|
    # |  0 | No signal (any talker ID)     |
    # |  1 | GPS/SBAS L1C/A (talker ID GP) |
    # |  6 | GPS L2C-L (talker ID GP)      |
    # |  7 | Galileo L1-BC (talker ID GA)  |
    # |  2 | Galileo E5b (talker ID GA)    |
    # |  1 | BeiDou B1I (talker ID GB)     |
    # |  B | BeiDou B2I (talker ID GB)     |
    # |  1 | GLONASS G1 C/A (talker ID GL) |
    # |  3 | GLONASS G2 C/A (talker ID GL) |
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gxgsv(null);
    if (msg.sentences !== undefined) {
      resolved.sentences = msg.sentences;
    }
    else {
      resolved.sentences = 0
    }

    if (msg.sent_num !== undefined) {
      resolved.sent_num = msg.sent_num;
    }
    else {
      resolved.sent_num = 0
    }

    if (msg.num_sats !== undefined) {
      resolved.num_sats = msg.num_sats;
    }
    else {
      resolved.num_sats = 0
    }

    if (msg.sat_id !== undefined) {
      resolved.sat_id = msg.sat_id;
    }
    else {
      resolved.sat_id = []
    }

    if (msg.elev !== undefined) {
      resolved.elev = msg.elev;
    }
    else {
      resolved.elev = []
    }

    if (msg.azim !== undefined) {
      resolved.azim = msg.azim;
    }
    else {
      resolved.azim = []
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = []
    }

    if (msg.signal_id !== undefined) {
      resolved.signal_id = msg.signal_id;
    }
    else {
      resolved.signal_id = ''
    }

    return resolved;
    }
};

module.exports = gxgsv;
