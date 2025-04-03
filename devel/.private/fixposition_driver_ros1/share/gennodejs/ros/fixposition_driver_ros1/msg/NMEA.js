// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssSats = require('./GnssSats.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NMEA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.date = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.quality = null;
      this.num_sv = null;
      this.ids = null;
      this.hdop_rec = null;
      this.pdop = null;
      this.hdop = null;
      this.vdop = null;
      this.rms_range = null;
      this.std_major = null;
      this.std_minor = null;
      this.angle_major = null;
      this.std_lat = null;
      this.std_lon = null;
      this.std_alt = null;
      this.covariance = null;
      this.cov_type = null;
      this.heading = null;
      this.speed = null;
      this.course = null;
      this.diff_age = null;
      this.diff_sta = null;
      this.gnss_sats = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
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
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('hdop_rec')) {
        this.hdop_rec = initObj.hdop_rec
      }
      else {
        this.hdop_rec = 0.0;
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
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('cov_type')) {
        this.cov_type = initObj.cov_type
      }
      else {
        this.cov_type = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
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
      if (initObj.hasOwnProperty('gnss_sats')) {
        this.gnss_sats = initObj.gnss_sats
      }
      else {
        this.gnss_sats = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NMEA
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int8(obj.quality, buffer, bufferOffset);
    // Serialize message field [num_sv]
    bufferOffset = _serializer.int8(obj.num_sv, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int8(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [hdop_rec]
    bufferOffset = _serializer.float64(obj.hdop_rec, buffer, bufferOffset);
    // Serialize message field [pdop]
    bufferOffset = _serializer.float64(obj.pdop, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    // Serialize message field [vdop]
    bufferOffset = _serializer.float64(obj.vdop, buffer, bufferOffset);
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
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 9) {
      throw new Error('Unable to serialize array field covariance - length must be 9')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 9);
    // Serialize message field [cov_type]
    bufferOffset = _serializer.int8(obj.cov_type, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [course]
    bufferOffset = _serializer.float64(obj.course, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.float64(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [diff_sta]
    bufferOffset = _serializer.string(obj.diff_sta, buffer, bufferOffset);
    // Serialize message field [gnss_sats]
    // Serialize the length for message field [gnss_sats]
    bufferOffset = _serializer.uint32(obj.gnss_sats.length, buffer, bufferOffset);
    obj.gnss_sats.forEach((val) => {
      bufferOffset = GnssSats.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NMEA
    let len;
    let data = new NMEA(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_sv]
    data.num_sv = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [hdop_rec]
    data.hdop_rec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pdop]
    data.pdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vdop]
    data.vdop = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [cov_type]
    data.cov_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [course]
    data.course = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_sta]
    data.diff_sta = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gnss_sats]
    // Deserialize array length for message field [gnss_sats]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gnss_sats = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gnss_sats[i] = GnssSats.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.time);
    length += _getByteLength(object.date);
    length += object.ids.length;
    length += _getByteLength(object.diff_sta);
    object.gnss_sats.forEach((val) => {
      length += GnssSats.getMessageSize(val);
    });
    return length + 239;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/NMEA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec17f8d2bc98980ffc7004f565692fa0';
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
    # Fixposition NMEA Message. Specified using the WGS 84 reference ellipsoid.
    #
    #
    ####################################################################################################
    
    # Format  | Field       | Unit              | Description
    # --------|-------------|-------------------|----------------------------------------------------------------------|
    Header      header      # [ns]              | Specifies the ROS time and Euclidian reference frame.
    string      time        # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
    string      date        # [ddmmyy]          | UTC date (day, month and year).
    float64     latitude    # [ddmm.mmmmm(mm)]  | Latitude. Positive is north of equator; negative is south.
    float64     longitude   # [dddmm.mmmmm(mm)] | Longitude. Positive is east of prime meridian; negative is west.
    float64     altitude    # [m]               | Altitude. Positive is above the WGS 84 ellipsoid.
    int8        quality     # [-]               | Quality indicator (see below).
    int8        num_sv      # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.
    int8[]      ids         # [-]               | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.
    float64     hdop_rec    # [0.10-99.99]      | Horizontal dilution of precision.
    float64     pdop        # [-]               | Position dillution of precision.
    float64     hdop        # [-]               | Horizontal dillution of precision.
    float64     vdop        # [-]               | Vertical dillution of precision.
    float64     rms_range   # [-]               | RMS value of the standard deviation of the range inputs to the navigation process.
    float64     std_major   # [m]               | Standard deviation of semi-major axis of error ellipse.
    float64     std_minor   # [m]               | Standard deviation of semi-minor axis of error ellipse.
    float64     angle_major # [deg]             | Angle of semi-major axis of error ellipse from true North.
    float64     std_lat     # [m]               | Standard deviation of latitude error.
    float64     std_lon     # [m]               | Standard deviation of longitude error.
    float64     std_alt     # [m]               | Standard deviation of altitude error.
    float64[9]  covariance  # [m2]              | Position covariance defined relative to a tangential plane (ENU frame).
    int8        cov_type    # [-]               | Method employed to estimate covariance (see below).
    float64     heading     # [deg]             | True heading.
    float64     speed       # [m/s]             | Speed over ground.
    float64     course      # [deg]             | Course over ground (w.r.t. True North).
    float64     diff_age    # [-]               | Approximate age of differential data (last GPS MSM message received).
    string      diff_sta    # [-]               | DGPS station ID (0000-1023).
    fixposition_driver_ros1/GnssSats[] gnss_sats # [-]| GNSS satellite signal statistics.
    
    # Quality indicator table
    #
    # | ID | Signal         |
    # |----|----------------|
    # |  0 | Invalid        |
    # |  1 | Non-RTK fix    |
    # |  4 | RTK fixed      |
    # |  5 | RTK float      |
    # |  6 | Dead-reckoning |
    
    
    # Covariance type table
    #
    # | ID | Signal         |
    # |----|----------------|
    # |  0 | Unknown        |
    # |  1 | Approximated   |
    # |  2 | Diagonal known |
    # |  3 | Known          |
    
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
    MSG: fixposition_driver_ros1/GnssSats
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
    const resolved = new NMEA(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
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

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.hdop_rec !== undefined) {
      resolved.hdop_rec = msg.hdop_rec;
    }
    else {
      resolved.hdop_rec = 0.0
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

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(9).fill(0)
    }

    if (msg.cov_type !== undefined) {
      resolved.cov_type = msg.cov_type;
    }
    else {
      resolved.cov_type = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
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

    if (msg.gnss_sats !== undefined) {
      resolved.gnss_sats = new Array(msg.gnss_sats.length);
      for (let i = 0; i < resolved.gnss_sats.length; ++i) {
        resolved.gnss_sats[i] = GnssSats.Resolve(msg.gnss_sats[i]);
      }
    }
    else {
      resolved.gnss_sats = []
    }

    return resolved;
    }
};

module.exports = NMEA;
