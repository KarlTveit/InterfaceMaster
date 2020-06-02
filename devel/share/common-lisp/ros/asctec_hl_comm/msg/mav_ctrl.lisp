; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude mav_ctrl.msg.html

(cl:defclass <mav_ctrl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (v_max_xy
    :reader v_max_xy
    :initarg :v_max_xy
    :type cl:float
    :initform 0.0)
   (v_max_z
    :reader v_max_z
    :initarg :v_max_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass mav_ctrl (<mav_ctrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_ctrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_ctrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<mav_ctrl> is deprecated: use asctec_hl_comm-msg:mav_ctrl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:type-val is deprecated.  Use asctec_hl_comm-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:x-val is deprecated.  Use asctec_hl_comm-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:y-val is deprecated.  Use asctec_hl_comm-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:z-val is deprecated.  Use asctec_hl_comm-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:yaw-val is deprecated.  Use asctec_hl_comm-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'v_max_xy-val :lambda-list '(m))
(cl:defmethod v_max_xy-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:v_max_xy-val is deprecated.  Use asctec_hl_comm-msg:v_max_xy instead.")
  (v_max_xy m))

(cl:ensure-generic-function 'v_max_z-val :lambda-list '(m))
(cl:defmethod v_max_z-val ((m <mav_ctrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:v_max_z-val is deprecated.  Use asctec_hl_comm-msg:v_max_z instead.")
  (v_max_z m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<mav_ctrl>)))
    "Constants for message type '<mav_ctrl>"
  '((:ACCELERATION . 1)
    (:VELOCITY . 2)
    (:POSITION . 3)
    (:VELOCITY_BODY . 4)
    (:POSITION_BODY . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'mav_ctrl)))
    "Constants for message type 'mav_ctrl"
  '((:ACCELERATION . 1)
    (:VELOCITY . 2)
    (:POSITION . 3)
    (:VELOCITY_BODY . 4)
    (:POSITION_BODY . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_ctrl>) ostream)
  "Serializes a message object of type '<mav_ctrl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_max_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_max_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_ctrl>) istream)
  "Deserializes a message object of type '<mav_ctrl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_max_xy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_max_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_ctrl>)))
  "Returns string type for a message object of type '<mav_ctrl>"
  "asctec_hl_comm/mav_ctrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_ctrl)))
  "Returns string type for a message object of type 'mav_ctrl"
  "asctec_hl_comm/mav_ctrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_ctrl>)))
  "Returns md5sum for a message object of type '<mav_ctrl>"
  "845e0a830a06ad942cc0b1907c31bc38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_ctrl)))
  "Returns md5sum for a message object of type 'mav_ctrl"
  "845e0a830a06ad942cc0b1907c31bc38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_ctrl>)))
  "Returns full string definition for message of type '<mav_ctrl>"
  (cl:format cl:nil "Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_ctrl)))
  "Returns full string definition for message of type 'mav_ctrl"
  (cl:format cl:nil "Header header~%~%int8        type        #message type~%~%# control commands, all units in SI units !!!~%# There are 3 operating modes of the helicopter:~%# 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity~%#    Inputs must be in body-coordinates~%#    Currently x~~pitch, y~~roll, z~~thrust, units in rad and rad/s for yaw~%# 2. Velocity: x, y, z, yaw correspond to x_dot etc...~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs must be in body-coordinates~%#    Units in m/s and rad/s respectively~%# 3. Position~%#    Vehicle must have it's own pose estimation e.g. vision/GPS~%#    Inputs in fixed coordinate system~%#    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint~%~%float32     x~%float32     y~%float32     z~%float32     yaw~%float32     v_max_xy~%float32     v_max_z~%~%int8 acceleration = 1~%int8 velocity = 2~%int8 position = 3~%int8 velocity_body = 4~%int8 position_body = 5~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_ctrl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_ctrl>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_ctrl
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':v_max_xy (v_max_xy msg))
    (cl:cons ':v_max_z (v_max_z msg))
))
