; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-srv)


;//! \htmlinclude MavCtrlSrv-request.msg.html

(cl:defclass <MavCtrlSrv-request> (roslisp-msg-protocol:ros-message)
  ((ctrl
    :reader ctrl
    :initarg :ctrl
    :type asctec_hl_comm-msg:mav_ctrl
    :initform (cl:make-instance 'asctec_hl_comm-msg:mav_ctrl)))
)

(cl:defclass MavCtrlSrv-request (<MavCtrlSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MavCtrlSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MavCtrlSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-srv:<MavCtrlSrv-request> is deprecated: use asctec_hl_comm-srv:MavCtrlSrv-request instead.")))

(cl:ensure-generic-function 'ctrl-val :lambda-list '(m))
(cl:defmethod ctrl-val ((m <MavCtrlSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-srv:ctrl-val is deprecated.  Use asctec_hl_comm-srv:ctrl instead.")
  (ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MavCtrlSrv-request>) ostream)
  "Serializes a message object of type '<MavCtrlSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ctrl) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MavCtrlSrv-request>) istream)
  "Deserializes a message object of type '<MavCtrlSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ctrl) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MavCtrlSrv-request>)))
  "Returns string type for a service object of type '<MavCtrlSrv-request>"
  "asctec_hl_comm/MavCtrlSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MavCtrlSrv-request)))
  "Returns string type for a service object of type 'MavCtrlSrv-request"
  "asctec_hl_comm/MavCtrlSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MavCtrlSrv-request>)))
  "Returns md5sum for a message object of type '<MavCtrlSrv-request>"
  "ed4ced4e777c3a84e6602a79aaabcdfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MavCtrlSrv-request)))
  "Returns md5sum for a message object of type 'MavCtrlSrv-request"
  "ed4ced4e777c3a84e6602a79aaabcdfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MavCtrlSrv-request>)))
  "Returns full string definition for message of type '<MavCtrlSrv-request>"
  (cl:format cl:nil "mav_ctrl ctrl~%~%================================================================================~%MSG: asctec_hl_comm/mav_ctrl~%Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MavCtrlSrv-request)))
  "Returns full string definition for message of type 'MavCtrlSrv-request"
  (cl:format cl:nil "mav_ctrl ctrl~%~%================================================================================~%MSG: asctec_hl_comm/mav_ctrl~%Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MavCtrlSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ctrl))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MavCtrlSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MavCtrlSrv-request
    (cl:cons ':ctrl (ctrl msg))
))
;//! \htmlinclude MavCtrlSrv-response.msg.html

(cl:defclass <MavCtrlSrv-response> (roslisp-msg-protocol:ros-message)
  ((ctrl_result
    :reader ctrl_result
    :initarg :ctrl_result
    :type asctec_hl_comm-msg:mav_ctrl
    :initform (cl:make-instance 'asctec_hl_comm-msg:mav_ctrl)))
)

(cl:defclass MavCtrlSrv-response (<MavCtrlSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MavCtrlSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MavCtrlSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-srv:<MavCtrlSrv-response> is deprecated: use asctec_hl_comm-srv:MavCtrlSrv-response instead.")))

(cl:ensure-generic-function 'ctrl_result-val :lambda-list '(m))
(cl:defmethod ctrl_result-val ((m <MavCtrlSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-srv:ctrl_result-val is deprecated.  Use asctec_hl_comm-srv:ctrl_result instead.")
  (ctrl_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MavCtrlSrv-response>) ostream)
  "Serializes a message object of type '<MavCtrlSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ctrl_result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MavCtrlSrv-response>) istream)
  "Deserializes a message object of type '<MavCtrlSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ctrl_result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MavCtrlSrv-response>)))
  "Returns string type for a service object of type '<MavCtrlSrv-response>"
  "asctec_hl_comm/MavCtrlSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MavCtrlSrv-response)))
  "Returns string type for a service object of type 'MavCtrlSrv-response"
  "asctec_hl_comm/MavCtrlSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MavCtrlSrv-response>)))
  "Returns md5sum for a message object of type '<MavCtrlSrv-response>"
  "ed4ced4e777c3a84e6602a79aaabcdfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MavCtrlSrv-response)))
  "Returns md5sum for a message object of type 'MavCtrlSrv-response"
  "ed4ced4e777c3a84e6602a79aaabcdfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MavCtrlSrv-response>)))
  "Returns full string definition for message of type '<MavCtrlSrv-response>"
  (cl:format cl:nil "mav_ctrl ctrl_result~%~%================================================================================~%MSG: asctec_hl_comm/mav_ctrl~%Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MavCtrlSrv-response)))
  "Returns full string definition for message of type 'MavCtrlSrv-response"
  (cl:format cl:nil "mav_ctrl ctrl_result~%~%================================================================================~%MSG: asctec_hl_comm/mav_ctrl~%Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MavCtrlSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ctrl_result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MavCtrlSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MavCtrlSrv-response
    (cl:cons ':ctrl_result (ctrl_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MavCtrlSrv)))
  'MavCtrlSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MavCtrlSrv)))
  'MavCtrlSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MavCtrlSrv)))
  "Returns string type for a service object of type '<MavCtrlSrv>"
  "asctec_hl_comm/MavCtrlSrv")