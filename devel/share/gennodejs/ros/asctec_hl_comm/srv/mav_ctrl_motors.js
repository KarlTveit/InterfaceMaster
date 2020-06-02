// Auto-generated. Do not edit!

// (in-package asctec_hl_comm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class mav_ctrl_motorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startMotors = null;
    }
    else {
      if (initObj.hasOwnProperty('startMotors')) {
        this.startMotors = initObj.startMotors
      }
      else {
        this.startMotors = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mav_ctrl_motorsRequest
    // Serialize message field [startMotors]
    bufferOffset = _serializer.bool(obj.startMotors, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mav_ctrl_motorsRequest
    let len;
    let data = new mav_ctrl_motorsRequest(null);
    // Deserialize message field [startMotors]
    data.startMotors = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asctec_hl_comm/mav_ctrl_motorsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6076998c2a5ec9144368e0457caa79ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool      startMotors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mav_ctrl_motorsRequest(null);
    if (msg.startMotors !== undefined) {
      resolved.startMotors = msg.startMotors;
    }
    else {
      resolved.startMotors = false
    }

    return resolved;
    }
};

class mav_ctrl_motorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorsRunning = null;
    }
    else {
      if (initObj.hasOwnProperty('motorsRunning')) {
        this.motorsRunning = initObj.motorsRunning
      }
      else {
        this.motorsRunning = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mav_ctrl_motorsResponse
    // Serialize message field [motorsRunning]
    bufferOffset = _serializer.bool(obj.motorsRunning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mav_ctrl_motorsResponse
    let len;
    let data = new mav_ctrl_motorsResponse(null);
    // Deserialize message field [motorsRunning]
    data.motorsRunning = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asctec_hl_comm/mav_ctrl_motorsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '246eeab4e06271d99512461f49c049e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool      motorsRunning
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mav_ctrl_motorsResponse(null);
    if (msg.motorsRunning !== undefined) {
      resolved.motorsRunning = msg.motorsRunning;
    }
    else {
      resolved.motorsRunning = false
    }

    return resolved;
    }
};

module.exports = {
  Request: mav_ctrl_motorsRequest,
  Response: mav_ctrl_motorsResponse,
  md5sum() { return 'e005c4128d496dadc787b05eb5384496'; },
  datatype() { return 'asctec_hl_comm/mav_ctrl_motors'; }
};
