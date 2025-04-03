// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class gnsscorr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gnss1_fix = null;
      this.gnss1_nsig_l1 = null;
      this.gnss1_nsig_l2 = null;
      this.gnss2_fix = null;
      this.gnss2_nsig_l1 = null;
      this.gnss2_nsig_l2 = null;
      this.corr_latency = null;
      this.corr_update_rate = null;
      this.corr_data_rate = null;
      this.corr_msg_rate = null;
      this.sta_id = null;
      this.sta_llh = null;
      this.sta_dist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gnss1_fix')) {
        this.gnss1_fix = initObj.gnss1_fix
      }
      else {
        this.gnss1_fix = 0;
      }
      if (initObj.hasOwnProperty('gnss1_nsig_l1')) {
        this.gnss1_nsig_l1 = initObj.gnss1_nsig_l1
      }
      else {
        this.gnss1_nsig_l1 = 0;
      }
      if (initObj.hasOwnProperty('gnss1_nsig_l2')) {
        this.gnss1_nsig_l2 = initObj.gnss1_nsig_l2
      }
      else {
        this.gnss1_nsig_l2 = 0;
      }
      if (initObj.hasOwnProperty('gnss2_fix')) {
        this.gnss2_fix = initObj.gnss2_fix
      }
      else {
        this.gnss2_fix = 0;
      }
      if (initObj.hasOwnProperty('gnss2_nsig_l1')) {
        this.gnss2_nsig_l1 = initObj.gnss2_nsig_l1
      }
      else {
        this.gnss2_nsig_l1 = 0;
      }
      if (initObj.hasOwnProperty('gnss2_nsig_l2')) {
        this.gnss2_nsig_l2 = initObj.gnss2_nsig_l2
      }
      else {
        this.gnss2_nsig_l2 = 0;
      }
      if (initObj.hasOwnProperty('corr_latency')) {
        this.corr_latency = initObj.corr_latency
      }
      else {
        this.corr_latency = 0.0;
      }
      if (initObj.hasOwnProperty('corr_update_rate')) {
        this.corr_update_rate = initObj.corr_update_rate
      }
      else {
        this.corr_update_rate = 0.0;
      }
      if (initObj.hasOwnProperty('corr_data_rate')) {
        this.corr_data_rate = initObj.corr_data_rate
      }
      else {
        this.corr_data_rate = 0.0;
      }
      if (initObj.hasOwnProperty('corr_msg_rate')) {
        this.corr_msg_rate = initObj.corr_msg_rate
      }
      else {
        this.corr_msg_rate = 0.0;
      }
      if (initObj.hasOwnProperty('sta_id')) {
        this.sta_id = initObj.sta_id
      }
      else {
        this.sta_id = 0;
      }
      if (initObj.hasOwnProperty('sta_llh')) {
        this.sta_llh = initObj.sta_llh
      }
      else {
        this.sta_llh = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sta_dist')) {
        this.sta_dist = initObj.sta_dist
      }
      else {
        this.sta_dist = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gnsscorr
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gnss1_fix]
    bufferOffset = _serializer.int16(obj.gnss1_fix, buffer, bufferOffset);
    // Serialize message field [gnss1_nsig_l1]
    bufferOffset = _serializer.int16(obj.gnss1_nsig_l1, buffer, bufferOffset);
    // Serialize message field [gnss1_nsig_l2]
    bufferOffset = _serializer.int16(obj.gnss1_nsig_l2, buffer, bufferOffset);
    // Serialize message field [gnss2_fix]
    bufferOffset = _serializer.int16(obj.gnss2_fix, buffer, bufferOffset);
    // Serialize message field [gnss2_nsig_l1]
    bufferOffset = _serializer.int16(obj.gnss2_nsig_l1, buffer, bufferOffset);
    // Serialize message field [gnss2_nsig_l2]
    bufferOffset = _serializer.int16(obj.gnss2_nsig_l2, buffer, bufferOffset);
    // Serialize message field [corr_latency]
    bufferOffset = _serializer.float64(obj.corr_latency, buffer, bufferOffset);
    // Serialize message field [corr_update_rate]
    bufferOffset = _serializer.float64(obj.corr_update_rate, buffer, bufferOffset);
    // Serialize message field [corr_data_rate]
    bufferOffset = _serializer.float64(obj.corr_data_rate, buffer, bufferOffset);
    // Serialize message field [corr_msg_rate]
    bufferOffset = _serializer.float64(obj.corr_msg_rate, buffer, bufferOffset);
    // Serialize message field [sta_id]
    bufferOffset = _serializer.int16(obj.sta_id, buffer, bufferOffset);
    // Serialize message field [sta_llh]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sta_llh, buffer, bufferOffset);
    // Serialize message field [sta_dist]
    bufferOffset = _serializer.int32(obj.sta_dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gnsscorr
    let len;
    let data = new gnsscorr(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss1_fix]
    data.gnss1_fix = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss1_nsig_l1]
    data.gnss1_nsig_l1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss1_nsig_l2]
    data.gnss1_nsig_l2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss2_fix]
    data.gnss2_fix = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss2_nsig_l1]
    data.gnss2_nsig_l1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss2_nsig_l2]
    data.gnss2_nsig_l2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [corr_latency]
    data.corr_latency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [corr_update_rate]
    data.corr_update_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [corr_data_rate]
    data.corr_data_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [corr_msg_rate]
    data.corr_msg_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sta_id]
    data.sta_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sta_llh]
    data.sta_llh = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sta_dist]
    data.sta_dist = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gnsscorr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b77ad2e5b59b9f0261c4a7de8a44a073';
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
    # Fixposition FP_A-GNSSCORR Message
    #
    #
    ####################################################################################################
    
    Header header
    int16 gnss1_fix          # GNSS1 fix status
    int16 gnss1_nsig_l1      # Number of L1 signals with correction data tracked by GNSS1
    int16 gnss1_nsig_l2      # Number of L2 signals with correction data tracked by GNSS1
    int16 gnss2_fix          # GNSS2 fix status
    int16 gnss2_nsig_l1      # Number of L1 signals with correction data tracked by GNSS2
    int16 gnss2_nsig_l2      # Number of L2 signals with correction data tracked by GNSS2
    
    float64 corr_latency       # Average correction data latency (10s window)
    float64 corr_update_rate   # Average correction update rate (10s window)
    float64 corr_data_rate     # Average correction data rate (10s window)
    float64 corr_msg_rate      # Average correction message rate (10s window)
    
    int16 sta_id                    # Correction station ID, range 0–4095
    geometry_msgs/Vector3 sta_llh   # Correction station LLH position (latitude, longitude, height)
    int32 sta_dist                  # Correction station baseline length
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gnsscorr(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gnss1_fix !== undefined) {
      resolved.gnss1_fix = msg.gnss1_fix;
    }
    else {
      resolved.gnss1_fix = 0
    }

    if (msg.gnss1_nsig_l1 !== undefined) {
      resolved.gnss1_nsig_l1 = msg.gnss1_nsig_l1;
    }
    else {
      resolved.gnss1_nsig_l1 = 0
    }

    if (msg.gnss1_nsig_l2 !== undefined) {
      resolved.gnss1_nsig_l2 = msg.gnss1_nsig_l2;
    }
    else {
      resolved.gnss1_nsig_l2 = 0
    }

    if (msg.gnss2_fix !== undefined) {
      resolved.gnss2_fix = msg.gnss2_fix;
    }
    else {
      resolved.gnss2_fix = 0
    }

    if (msg.gnss2_nsig_l1 !== undefined) {
      resolved.gnss2_nsig_l1 = msg.gnss2_nsig_l1;
    }
    else {
      resolved.gnss2_nsig_l1 = 0
    }

    if (msg.gnss2_nsig_l2 !== undefined) {
      resolved.gnss2_nsig_l2 = msg.gnss2_nsig_l2;
    }
    else {
      resolved.gnss2_nsig_l2 = 0
    }

    if (msg.corr_latency !== undefined) {
      resolved.corr_latency = msg.corr_latency;
    }
    else {
      resolved.corr_latency = 0.0
    }

    if (msg.corr_update_rate !== undefined) {
      resolved.corr_update_rate = msg.corr_update_rate;
    }
    else {
      resolved.corr_update_rate = 0.0
    }

    if (msg.corr_data_rate !== undefined) {
      resolved.corr_data_rate = msg.corr_data_rate;
    }
    else {
      resolved.corr_data_rate = 0.0
    }

    if (msg.corr_msg_rate !== undefined) {
      resolved.corr_msg_rate = msg.corr_msg_rate;
    }
    else {
      resolved.corr_msg_rate = 0.0
    }

    if (msg.sta_id !== undefined) {
      resolved.sta_id = msg.sta_id;
    }
    else {
      resolved.sta_id = 0
    }

    if (msg.sta_llh !== undefined) {
      resolved.sta_llh = geometry_msgs.msg.Vector3.Resolve(msg.sta_llh)
    }
    else {
      resolved.sta_llh = new geometry_msgs.msg.Vector3()
    }

    if (msg.sta_dist !== undefined) {
      resolved.sta_dist = msg.sta_dist;
    }
    else {
      resolved.sta_dist = 0
    }

    return resolved;
    }
};

module.exports = gnsscorr;
