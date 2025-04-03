// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class odomstatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.init_status = null;
      this.fusion_imu = null;
      this.fusion_gnss1 = null;
      this.fusion_gnss2 = null;
      this.fusion_corr = null;
      this.fusion_cam1 = null;
      this.fusion_ws = null;
      this.fusion_markers = null;
      this.imu_status = null;
      this.imu_noise = null;
      this.imu_conv = null;
      this.gnss1_status = null;
      this.gnss2_status = null;
      this.baseline_status = null;
      this.corr_status = null;
      this.cam1_status = null;
      this.ws_status = null;
      this.ws_conv = null;
      this.markers_status = null;
      this.markers_conv = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('init_status')) {
        this.init_status = initObj.init_status
      }
      else {
        this.init_status = 0;
      }
      if (initObj.hasOwnProperty('fusion_imu')) {
        this.fusion_imu = initObj.fusion_imu
      }
      else {
        this.fusion_imu = 0;
      }
      if (initObj.hasOwnProperty('fusion_gnss1')) {
        this.fusion_gnss1 = initObj.fusion_gnss1
      }
      else {
        this.fusion_gnss1 = 0;
      }
      if (initObj.hasOwnProperty('fusion_gnss2')) {
        this.fusion_gnss2 = initObj.fusion_gnss2
      }
      else {
        this.fusion_gnss2 = 0;
      }
      if (initObj.hasOwnProperty('fusion_corr')) {
        this.fusion_corr = initObj.fusion_corr
      }
      else {
        this.fusion_corr = 0;
      }
      if (initObj.hasOwnProperty('fusion_cam1')) {
        this.fusion_cam1 = initObj.fusion_cam1
      }
      else {
        this.fusion_cam1 = 0;
      }
      if (initObj.hasOwnProperty('fusion_ws')) {
        this.fusion_ws = initObj.fusion_ws
      }
      else {
        this.fusion_ws = 0;
      }
      if (initObj.hasOwnProperty('fusion_markers')) {
        this.fusion_markers = initObj.fusion_markers
      }
      else {
        this.fusion_markers = 0;
      }
      if (initObj.hasOwnProperty('imu_status')) {
        this.imu_status = initObj.imu_status
      }
      else {
        this.imu_status = 0;
      }
      if (initObj.hasOwnProperty('imu_noise')) {
        this.imu_noise = initObj.imu_noise
      }
      else {
        this.imu_noise = 0;
      }
      if (initObj.hasOwnProperty('imu_conv')) {
        this.imu_conv = initObj.imu_conv
      }
      else {
        this.imu_conv = 0;
      }
      if (initObj.hasOwnProperty('gnss1_status')) {
        this.gnss1_status = initObj.gnss1_status
      }
      else {
        this.gnss1_status = 0;
      }
      if (initObj.hasOwnProperty('gnss2_status')) {
        this.gnss2_status = initObj.gnss2_status
      }
      else {
        this.gnss2_status = 0;
      }
      if (initObj.hasOwnProperty('baseline_status')) {
        this.baseline_status = initObj.baseline_status
      }
      else {
        this.baseline_status = 0;
      }
      if (initObj.hasOwnProperty('corr_status')) {
        this.corr_status = initObj.corr_status
      }
      else {
        this.corr_status = 0;
      }
      if (initObj.hasOwnProperty('cam1_status')) {
        this.cam1_status = initObj.cam1_status
      }
      else {
        this.cam1_status = 0;
      }
      if (initObj.hasOwnProperty('ws_status')) {
        this.ws_status = initObj.ws_status
      }
      else {
        this.ws_status = 0;
      }
      if (initObj.hasOwnProperty('ws_conv')) {
        this.ws_conv = initObj.ws_conv
      }
      else {
        this.ws_conv = 0;
      }
      if (initObj.hasOwnProperty('markers_status')) {
        this.markers_status = initObj.markers_status
      }
      else {
        this.markers_status = 0;
      }
      if (initObj.hasOwnProperty('markers_conv')) {
        this.markers_conv = initObj.markers_conv
      }
      else {
        this.markers_conv = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odomstatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [init_status]
    bufferOffset = _serializer.int16(obj.init_status, buffer, bufferOffset);
    // Serialize message field [fusion_imu]
    bufferOffset = _serializer.int16(obj.fusion_imu, buffer, bufferOffset);
    // Serialize message field [fusion_gnss1]
    bufferOffset = _serializer.int16(obj.fusion_gnss1, buffer, bufferOffset);
    // Serialize message field [fusion_gnss2]
    bufferOffset = _serializer.int16(obj.fusion_gnss2, buffer, bufferOffset);
    // Serialize message field [fusion_corr]
    bufferOffset = _serializer.int16(obj.fusion_corr, buffer, bufferOffset);
    // Serialize message field [fusion_cam1]
    bufferOffset = _serializer.int16(obj.fusion_cam1, buffer, bufferOffset);
    // Serialize message field [fusion_ws]
    bufferOffset = _serializer.int16(obj.fusion_ws, buffer, bufferOffset);
    // Serialize message field [fusion_markers]
    bufferOffset = _serializer.int16(obj.fusion_markers, buffer, bufferOffset);
    // Serialize message field [imu_status]
    bufferOffset = _serializer.int16(obj.imu_status, buffer, bufferOffset);
    // Serialize message field [imu_noise]
    bufferOffset = _serializer.int16(obj.imu_noise, buffer, bufferOffset);
    // Serialize message field [imu_conv]
    bufferOffset = _serializer.int16(obj.imu_conv, buffer, bufferOffset);
    // Serialize message field [gnss1_status]
    bufferOffset = _serializer.int16(obj.gnss1_status, buffer, bufferOffset);
    // Serialize message field [gnss2_status]
    bufferOffset = _serializer.int16(obj.gnss2_status, buffer, bufferOffset);
    // Serialize message field [baseline_status]
    bufferOffset = _serializer.int16(obj.baseline_status, buffer, bufferOffset);
    // Serialize message field [corr_status]
    bufferOffset = _serializer.int16(obj.corr_status, buffer, bufferOffset);
    // Serialize message field [cam1_status]
    bufferOffset = _serializer.int16(obj.cam1_status, buffer, bufferOffset);
    // Serialize message field [ws_status]
    bufferOffset = _serializer.int16(obj.ws_status, buffer, bufferOffset);
    // Serialize message field [ws_conv]
    bufferOffset = _serializer.int16(obj.ws_conv, buffer, bufferOffset);
    // Serialize message field [markers_status]
    bufferOffset = _serializer.int16(obj.markers_status, buffer, bufferOffset);
    // Serialize message field [markers_conv]
    bufferOffset = _serializer.int16(obj.markers_conv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odomstatus
    let len;
    let data = new odomstatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [init_status]
    data.init_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_imu]
    data.fusion_imu = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_gnss1]
    data.fusion_gnss1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_gnss2]
    data.fusion_gnss2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_corr]
    data.fusion_corr = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_cam1]
    data.fusion_cam1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_ws]
    data.fusion_ws = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [fusion_markers]
    data.fusion_markers = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_status]
    data.imu_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_noise]
    data.imu_noise = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_conv]
    data.imu_conv = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss1_status]
    data.gnss1_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss2_status]
    data.gnss2_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [baseline_status]
    data.baseline_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [corr_status]
    data.corr_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cam1_status]
    data.cam1_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ws_status]
    data.ws_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ws_conv]
    data.ws_conv = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [markers_status]
    data.markers_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [markers_conv]
    data.markers_conv = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/odomstatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '307cfe184ec2b75acdc3f76049315683';
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
    # Fixposition FP_A-ODOMSTATUS Message
    #
    #
    ####################################################################################################
    
    Header header
    int16 init_status                            # Fusion init status (see below)
    int16 fusion_imu                             # Fusion measurement status: IMU (see below)
    int16 fusion_gnss1                           # Fusion measurement status: GNSS 1 (see below)
    int16 fusion_gnss2                           # Fusion measurement status: GNSS 2 (see below)
    int16 fusion_corr                            # Fusion measurement status: GNSS corrections (see below)
    int16 fusion_cam1                            # Fusion measurement status: camera (see below)
    int16 fusion_ws                              # Fusion measurement status: wheelspeed (see below)
    int16 fusion_markers                         # Fusion measurement status: markers (see below)
    int16 imu_status                             # IMU bias status (see below)
    int16 imu_noise                              # IMU variance status (see below)
    int16 imu_conv                               # IMU convergence status (see below)
    int16 gnss1_status                           # GNSS 1 status (see below)
    int16 gnss2_status                           # GNSS 2 status (see below)
    int16 baseline_status                        # Baseline status (see below)
    int16 corr_status                            # GNSS correction status (see below)
    int16 cam1_status                            # Camera 1 status (see below)
    int16 ws_status                              # Wheelspeed status (see below)
    int16 ws_conv                                # Wheelspeed convergence status (see below)
    int16 markers_status                         # Markers status (see below)
    int16 markers_conv                           # Markers convergence status (see below)
    
    
    # Fusion initialisation status (init_status)
    #
    # | Value | Description          |
    # |-------|----------------------|
    # |  null | Unknown              |
    # |   0   | Not initialized      |
    # |   1   | Locally initialised  |
    # |   2   | Globally initialised |
    
    
    # Fusion measurement status (fusion_imu, fusion_cam1, fusion_cam2, fusion_gnss1, fusion_gnss2, fusion_corr, fusion_ws, fusion_markers)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Not used           |
    # |   1   | Used               |
    # |   2   | Degraded           |
    
    
    # IMU bias status (imu_status)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Not converged      |
    # |   1   | Warmstarted        |
    # |   2   | Rough convergence  |
    # |   3   | Fine convergence   |
    
    
    # IMU variance (imu_noise)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Reserved           |
    # |   1   | Low noise          |
    # |   2   | Medium noise       |
    # |   3   | High noise         |
    # | 4...7 | Reserved           |
    
    
    # IMU accelerometer and gyroscope convergence (imu_conv)
    #
    # | Value | Description                      |
    # |-------|----------------------------------|
    # |  null | Info not available               |
    # |   0   | Awaiting Fusion                  |
    # |   1   | Awaiting IMU measurements        |
    # |   2   | Insufficient global measurements |
    # |   3   | Insufficient motion              |
    # |   4   | Converging                       |
    # | 5...6 | Reserved                         |
    # |   7   | Idle                             |
    
    
    # GNSS fix status (gnss1_status, gnss2_status)
    #
    # | Value | Description                    |
    # |-------|--------------------------------|
    # |  null | Info not available             |
    # |   0   | No fix                         |
    # |   1   | Single-point positioning (SPP) |
    # |   2   | RTK moving baseline            |
    # | 3...4 | Reserved                       |
    # |   5   | RTK float                      |
    # | 6...7 | Reserved                       |
    # |   8   | RTK fixed                      |
    
    
    # GNSS correction status (corr_status)
    #
    # | Value | Description                                                                                                    |
    # |-------|----------------------------------------------------------------------------------------------------------------|
    # |  null | Info not available                                                                                             |
    # |   0   | Waiting fusion                                                                                                 |
    # |   1   | No GNSS available                                                                                              |
    # |   2   | No corrections used                                                                                            |
    # |   3   | Limited corrections used: station data & at least one of the constellations among the valid rover measurements |
    # |   4   | Corrections are too old                                                                                        |
    # |   5   | Sufficient corrections used: station data and corrections for ALL bands among the valid rover measurements     |
    
    
    # Baseline status (baseline_status)
    #
    # | Value | Description            |
    # |-------|------------------------|
    # |  null | Info not available     |
    # |   0   | Waiting fusion         |
    # |   1   | Not available / No fix |
    # |   2   | Failing                |
    # |   3   | Passing                |
    
    
    # Camera status (cam1_status)
    #
    # | Value | Description                                      |
    # |-------|--------------------------------------------------|
    # |  null | Info not available                               |
    # |   0   | Camera not available                             |
    # |   1   | Camera available, but not usable (e.g. too dark) |
    # | 2...4 | Reserved                                         |
    # |   5   | Camera working and available                     |
    
    
    # Wheelspeed status (ws_status)
    #
    # | Value | Description                                                |
    # |-------|------------------------------------------------------------|
    # |  null | Info not available                                         |
    # |   0   | No wheelspeed enabled                                      |
    # |   1   | Missing wheelspeed measurements                            |
    # |   2   | At least one wheelspeed enabled, no wheelspeed converged   |
    # |   3   | At least one wheelspeed enabled and at least one converged |
    # |   4   | At least one wheelspeed enabled and all converged          |
    
    
    # Wheelspeed convergence status (ws_conv)
    #
    # | Value | Description                       |
    # |-------|-----------------------------------|
    # |  null | Info not available                |
    # |   0   | Awaiting Fusion                   |
    # |   1   | Missing wheelspeed measurements   |
    # |   2   | Insufficient global measurements  |
    # |   3   | Insufficient motion               |
    # |   4   | Insufficient imu bias convergence |
    # |   5   | Converging                        |
    # |   6   | Idle                              |
    
    
    # Markers status (markers_status)
    #
    # | Value | Description                 |
    # |-------|-----------------------------|
    # |  null | Info not available          |
    # |   0   | No markers available        |
    # |   1   | Markers available           |
    # |   2   | Markers available, and used |
    
    
    # Markers convergence status (markers_conv)
    #
    # | Value | Description                      |
    # |-------|----------------------------------|
    # |  null | Info not available               |
    # |   0   | Awaiting Fusion                  |
    # |   1   | Waiting marker measurements      |
    # |   2   | Insufficient global measurements |
    # |   3   | Converging                       |
    # |   4   | Idle                             |
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new odomstatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.init_status !== undefined) {
      resolved.init_status = msg.init_status;
    }
    else {
      resolved.init_status = 0
    }

    if (msg.fusion_imu !== undefined) {
      resolved.fusion_imu = msg.fusion_imu;
    }
    else {
      resolved.fusion_imu = 0
    }

    if (msg.fusion_gnss1 !== undefined) {
      resolved.fusion_gnss1 = msg.fusion_gnss1;
    }
    else {
      resolved.fusion_gnss1 = 0
    }

    if (msg.fusion_gnss2 !== undefined) {
      resolved.fusion_gnss2 = msg.fusion_gnss2;
    }
    else {
      resolved.fusion_gnss2 = 0
    }

    if (msg.fusion_corr !== undefined) {
      resolved.fusion_corr = msg.fusion_corr;
    }
    else {
      resolved.fusion_corr = 0
    }

    if (msg.fusion_cam1 !== undefined) {
      resolved.fusion_cam1 = msg.fusion_cam1;
    }
    else {
      resolved.fusion_cam1 = 0
    }

    if (msg.fusion_ws !== undefined) {
      resolved.fusion_ws = msg.fusion_ws;
    }
    else {
      resolved.fusion_ws = 0
    }

    if (msg.fusion_markers !== undefined) {
      resolved.fusion_markers = msg.fusion_markers;
    }
    else {
      resolved.fusion_markers = 0
    }

    if (msg.imu_status !== undefined) {
      resolved.imu_status = msg.imu_status;
    }
    else {
      resolved.imu_status = 0
    }

    if (msg.imu_noise !== undefined) {
      resolved.imu_noise = msg.imu_noise;
    }
    else {
      resolved.imu_noise = 0
    }

    if (msg.imu_conv !== undefined) {
      resolved.imu_conv = msg.imu_conv;
    }
    else {
      resolved.imu_conv = 0
    }

    if (msg.gnss1_status !== undefined) {
      resolved.gnss1_status = msg.gnss1_status;
    }
    else {
      resolved.gnss1_status = 0
    }

    if (msg.gnss2_status !== undefined) {
      resolved.gnss2_status = msg.gnss2_status;
    }
    else {
      resolved.gnss2_status = 0
    }

    if (msg.baseline_status !== undefined) {
      resolved.baseline_status = msg.baseline_status;
    }
    else {
      resolved.baseline_status = 0
    }

    if (msg.corr_status !== undefined) {
      resolved.corr_status = msg.corr_status;
    }
    else {
      resolved.corr_status = 0
    }

    if (msg.cam1_status !== undefined) {
      resolved.cam1_status = msg.cam1_status;
    }
    else {
      resolved.cam1_status = 0
    }

    if (msg.ws_status !== undefined) {
      resolved.ws_status = msg.ws_status;
    }
    else {
      resolved.ws_status = 0
    }

    if (msg.ws_conv !== undefined) {
      resolved.ws_conv = msg.ws_conv;
    }
    else {
      resolved.ws_conv = 0
    }

    if (msg.markers_status !== undefined) {
      resolved.markers_status = msg.markers_status;
    }
    else {
      resolved.markers_status = 0
    }

    if (msg.markers_conv !== undefined) {
      resolved.markers_conv = msg.markers_conv;
    }
    else {
      resolved.markers_conv = 0
    }

    return resolved;
    }
};

module.exports = odomstatus;
