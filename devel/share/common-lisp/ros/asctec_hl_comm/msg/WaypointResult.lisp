; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude WaypointResult.msg.html

(cl:defclass <WaypointResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (result_pos
    :reader result_pos
    :initarg :result_pos
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (result_yaw
    :reader result_yaw
    :initarg :result_yaw
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass WaypointResult (<WaypointResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<WaypointResult> is deprecated: use asctec_hl_comm-msg:WaypointResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'result_pos-val :lambda-list '(m))
(cl:defmethod result_pos-val ((m <WaypointResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:result_pos-val is deprecated.  Use asctec_hl_comm-msg:result_pos instead.")
  (result_pos m))

(cl:ensure-generic-function 'result_yaw-val :lambda-list '(m))
(cl:defmethod result_yaw-val ((m <WaypointResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:result_yaw-val is deprecated.  Use asctec_hl_comm-msg:result_yaw instead.")
  (result_yaw m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WaypointResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:status-val is deprecated.  Use asctec_hl_comm-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointResult>) ostream)
  "Serializes a message object of type '<WaypointResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result_pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result_yaw))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointResult>) istream)
  "Deserializes a message object of type '<WaypointResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result_pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result_yaw) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointResult>)))
  "Returns string type for a message object of type '<WaypointResult>"
  "asctec_hl_comm/WaypointResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointResult)))
  "Returns string type for a message object of type 'WaypointResult"
  "asctec_hl_comm/WaypointResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointResult>)))
  "Returns md5sum for a message object of type '<WaypointResult>"
  "3f4c97ad97360a3554493ebd7d1ee895")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointResult)))
  "Returns md5sum for a message object of type 'WaypointResult"
  "3f4c97ad97360a3554493ebd7d1ee895")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointResult>)))
  "Returns full string definition for message of type '<WaypointResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%Header header~%geometry_msgs/Point32   result_pos~%float32                 result_yaw~%string                  status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointResult)))
  "Returns full string definition for message of type 'WaypointResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%Header header~%geometry_msgs/Point32   result_pos~%float32                 result_yaw~%string                  status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result_pos))
     4
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointResult>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointResult
    (cl:cons ':header (header msg))
    (cl:cons ':result_pos (result_pos msg))
    (cl:cons ':result_yaw (result_yaw msg))
    (cl:cons ':status (status msg))
))
