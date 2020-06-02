// Auto-generated. Do not edit!

// (in-package asctec_hl_comm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mav_ctrl = require('../msg/mav_ctrl.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MavCtrlSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl')) {
        this.ctrl = initObj.ctrl
      }
      else {
        this.ctrl = new mav_ctrl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MavCtrlSrvRequest
    // Serialize message field [ctrl]
    bufferOffset = mav_ctrl.serialize(obj.ctrl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MavCtrlSrvRequest
    let len;
    let data = new MavCtrlSrvRequest(null);
    // Deserialize message field [ctrl]
    data.ctrl = mav_ctrl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mav_ctrl.getMessageSize(object.ctrl);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asctec_hl_comm/MavCtrlSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38a627ff8fcd6d0f534f521aa37786af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mav_ctrl ctrl
    
    ================================================================================
    MSG: asctec_hl_comm/mav_ctrl
    Header header
    
    int8        type        #message type
    
    # control commands, all units in SI units !!!
    # There are 3 operating modes of the helicopter:
    # 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity
    #    Inputs must be in body-coordinates
    #    Currently x~pitch, y~roll, z~thrust, units in rad and rad/s for yaw
    # 2. Velocity: x, y, z, yaw correspond to x_dot etc...
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs must be in body-coordinates
    #    Units in m/s and rad/s respectively
    # 3. Position
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs in fixed coordinate system
    #    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint
    
    float32     x
    float32     y
    float32     z
    float32     yaw
    float32     v_max_xy
    float32     v_max_z
    
    int8 acceleration = 1
    int8 velocity = 2
    int8 position = 3
    int8 velocity_body = 4
    int8 position_body = 5
    
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
    const resolved = new MavCtrlSrvRequest(null);
    if (msg.ctrl !== undefined) {
      resolved.ctrl = mav_ctrl.Resolve(msg.ctrl)
    }
    else {
      resolved.ctrl = new mav_ctrl()
    }

    return resolved;
    }
};

class MavCtrlSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl_result = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl_result')) {
        this.ctrl_result = initObj.ctrl_result
      }
      else {
        this.ctrl_result = new mav_ctrl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MavCtrlSrvResponse
    // Serialize message field [ctrl_result]
    bufferOffset = mav_ctrl.serialize(obj.ctrl_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MavCtrlSrvResponse
    let len;
    let data = new MavCtrlSrvResponse(null);
    // Deserialize message field [ctrl_result]
    data.ctrl_result = mav_ctrl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mav_ctrl.getMessageSize(object.ctrl_result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asctec_hl_comm/MavCtrlSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b903b08125ca08bbbb20320238af4215';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mav_ctrl ctrl_result
    
    ================================================================================
    MSG: asctec_hl_comm/mav_ctrl
    Header header
    
    int8        type        #message type
    
    # control commands, all units in SI units !!!
    # There are 3 operating modes of the helicopter:
    # 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity
    #    Inputs must be in body-coordinates
    #    Currently x~pitch, y~roll, z~thrust, units in rad and rad/s for yaw
    # 2. Velocity: x, y, z, yaw correspond to x_dot etc...
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs must be in body-coordinates
    #    Units in m/s and rad/s respectively
    # 3. Position
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs in fixed coordinate system
    #    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint
    
    float32     x
    float32     y
    float32     z
    float32     yaw
    float32     v_max_xy
    float32     v_max_z
    
    int8 acceleration = 1
    int8 velocity = 2
    int8 position = 3
    int8 velocity_body = 4
    int8 position_body = 5
    
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
    const resolved = new MavCtrlSrvResponse(null);
    if (msg.ctrl_result !== undefined) {
      resolved.ctrl_result = mav_ctrl.Resolve(msg.ctrl_result)
    }
    else {
      resolved.ctrl_result = new mav_ctrl()
    }

    return resolved;
    }
};

module.exports = {
  Request: MavCtrlSrvRequest,
  Response: MavCtrlSrvResponse,
  md5sum() { return 'ed4ced4e777c3a84e6602a79aaabcdfe'; },
  datatype() { return 'asctec_hl_comm/MavCtrlSrv'; }
};
