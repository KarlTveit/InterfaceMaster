; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude mav_rcdata.msg.html

(cl:defclass <mav_rcdata> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (channel
    :reader channel
    :initarg :channel
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass mav_rcdata (<mav_rcdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_rcdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_rcdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<mav_rcdata> is deprecated: use asctec_hl_comm-msg:mav_rcdata instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_rcdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <mav_rcdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:channel-val is deprecated.  Use asctec_hl_comm-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_rcdata>) ostream)
  "Serializes a message object of type '<mav_rcdata>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_rcdata>) istream)
  "Deserializes a message object of type '<mav_rcdata>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'channel) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'channel)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_rcdata>)))
  "Returns string type for a message object of type '<mav_rcdata>"
  "asctec_hl_comm/mav_rcdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_rcdata)))
  "Returns string type for a message object of type 'mav_rcdata"
  "asctec_hl_comm/mav_rcdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_rcdata>)))
  "Returns md5sum for a message object of type '<mav_rcdata>"
  "2511326b0deceba64dcfc173bba8678e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_rcdata)))
  "Returns md5sum for a message object of type 'mav_rcdata"
  "2511326b0deceba64dcfc173bba8678e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_rcdata>)))
  "Returns full string definition for message of type '<mav_rcdata>"
  (cl:format cl:nil "Header header~%~%uint16[8] channel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_rcdata)))
  "Returns full string definition for message of type 'mav_rcdata"
  (cl:format cl:nil "Header header~%~%uint16[8] channel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_rcdata>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_rcdata>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_rcdata
    (cl:cons ':header (header msg))
    (cl:cons ':channel (channel msg))
))
