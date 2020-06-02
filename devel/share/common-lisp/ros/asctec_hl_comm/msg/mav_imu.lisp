; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude mav_imu.msg.html

(cl:defclass <mav_imu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (differential_height
    :reader differential_height
    :initarg :differential_height
    :type cl:float
    :initform 0.0))
)

(cl:defclass mav_imu (<mav_imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<mav_imu> is deprecated: use asctec_hl_comm-msg:mav_imu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:orientation-val is deprecated.  Use asctec_hl_comm-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:angular_velocity-val is deprecated.  Use asctec_hl_comm-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:acceleration-val is deprecated.  Use asctec_hl_comm-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:height-val is deprecated.  Use asctec_hl_comm-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'differential_height-val :lambda-list '(m))
(cl:defmethod differential_height-val ((m <mav_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:differential_height-val is deprecated.  Use asctec_hl_comm-msg:differential_height instead.")
  (differential_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_imu>) ostream)
  "Serializes a message object of type '<mav_imu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'differential_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_imu>) istream)
  "Deserializes a message object of type '<mav_imu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'differential_height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_imu>)))
  "Returns string type for a message object of type '<mav_imu>"
  "asctec_hl_comm/mav_imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_imu)))
  "Returns string type for a message object of type 'mav_imu"
  "asctec_hl_comm/mav_imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_imu>)))
  "Returns md5sum for a message object of type '<mav_imu>"
  "fc0b109c033a4f5dccf47e9654e6b6c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_imu)))
  "Returns md5sum for a message object of type 'mav_imu"
  "fc0b109c033a4f5dccf47e9654e6b6c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_imu>)))
  "Returns full string definition for message of type '<mav_imu>"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion    orientation~%geometry_msgs/Vector3       angular_velocity~%geometry_msgs/Vector3       acceleration~%float64                     height~%float64                     differential_height~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_imu)))
  "Returns full string definition for message of type 'mav_imu"
  (cl:format cl:nil "Header header~%geometry_msgs/Quaternion    orientation~%geometry_msgs/Vector3       angular_velocity~%geometry_msgs/Vector3       acceleration~%float64                     height~%float64                     differential_height~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_imu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_imu>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_imu
    (cl:cons ':header (header msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':height (height msg))
    (cl:cons ':differential_height (differential_height msg))
))
