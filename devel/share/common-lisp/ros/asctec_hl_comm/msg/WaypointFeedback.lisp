; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude WaypointFeedback.msg.html

(cl:defclass <WaypointFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_pos
    :reader current_pos
    :initarg :current_pos
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (current_yaw
    :reader current_yaw
    :initarg :current_yaw
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass WaypointFeedback (<WaypointFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<WaypointFeedback> is deprecated: use asctec_hl_comm-msg:WaypointFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_pos-val :lambda-list '(m))
(cl:defmethod current_pos-val ((m <WaypointFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:current_pos-val is deprecated.  Use asctec_hl_comm-msg:current_pos instead.")
  (current_pos m))

(cl:ensure-generic-function 'current_yaw-val :lambda-list '(m))
(cl:defmethod current_yaw-val ((m <WaypointFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:current_yaw-val is deprecated.  Use asctec_hl_comm-msg:current_yaw instead.")
  (current_yaw m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WaypointFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:status-val is deprecated.  Use asctec_hl_comm-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointFeedback>) ostream)
  "Serializes a message object of type '<WaypointFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointFeedback>) istream)
  "Deserializes a message object of type '<WaypointFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointFeedback>)))
  "Returns string type for a message object of type '<WaypointFeedback>"
  "asctec_hl_comm/WaypointFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointFeedback)))
  "Returns string type for a message object of type 'WaypointFeedback"
  "asctec_hl_comm/WaypointFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointFeedback>)))
  "Returns md5sum for a message object of type '<WaypointFeedback>"
  "af0dfd31e2502a8130260fc264e2e292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointFeedback)))
  "Returns md5sum for a message object of type 'WaypointFeedback"
  "af0dfd31e2502a8130260fc264e2e292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointFeedback>)))
  "Returns full string definition for message of type '<WaypointFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%Header header~%geometry_msgs/Point32   current_pos~%float32                 current_yaw~%string                  status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointFeedback)))
  "Returns full string definition for message of type 'WaypointFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%Header header~%geometry_msgs/Point32   current_pos~%float32                 current_yaw~%string                  status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pos))
     4
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':current_pos (current_pos msg))
    (cl:cons ':current_yaw (current_yaw msg))
    (cl:cons ':status (status msg))
))
