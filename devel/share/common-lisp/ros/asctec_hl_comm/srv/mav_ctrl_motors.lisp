; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-srv)


;//! \htmlinclude mav_ctrl_motors-request.msg.html

(cl:defclass <mav_ctrl_motors-request> (roslisp-msg-protocol:ros-message)
  ((startMotors
    :reader startMotors
    :initarg :startMotors
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mav_ctrl_motors-request (<mav_ctrl_motors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_ctrl_motors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_ctrl_motors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-srv:<mav_ctrl_motors-request> is deprecated: use asctec_hl_comm-srv:mav_ctrl_motors-request instead.")))

(cl:ensure-generic-function 'startMotors-val :lambda-list '(m))
(cl:defmethod startMotors-val ((m <mav_ctrl_motors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-srv:startMotors-val is deprecated.  Use asctec_hl_comm-srv:startMotors instead.")
  (startMotors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_ctrl_motors-request>) ostream)
  "Serializes a message object of type '<mav_ctrl_motors-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'startMotors) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_ctrl_motors-request>) istream)
  "Deserializes a message object of type '<mav_ctrl_motors-request>"
    (cl:setf (cl:slot-value msg 'startMotors) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_ctrl_motors-request>)))
  "Returns string type for a service object of type '<mav_ctrl_motors-request>"
  "asctec_hl_comm/mav_ctrl_motorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_ctrl_motors-request)))
  "Returns string type for a service object of type 'mav_ctrl_motors-request"
  "asctec_hl_comm/mav_ctrl_motorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_ctrl_motors-request>)))
  "Returns md5sum for a message object of type '<mav_ctrl_motors-request>"
  "e005c4128d496dadc787b05eb5384496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_ctrl_motors-request)))
  "Returns md5sum for a message object of type 'mav_ctrl_motors-request"
  "e005c4128d496dadc787b05eb5384496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_ctrl_motors-request>)))
  "Returns full string definition for message of type '<mav_ctrl_motors-request>"
  (cl:format cl:nil "bool      startMotors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_ctrl_motors-request)))
  "Returns full string definition for message of type 'mav_ctrl_motors-request"
  (cl:format cl:nil "bool      startMotors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_ctrl_motors-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_ctrl_motors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_ctrl_motors-request
    (cl:cons ':startMotors (startMotors msg))
))
;//! \htmlinclude mav_ctrl_motors-response.msg.html

(cl:defclass <mav_ctrl_motors-response> (roslisp-msg-protocol:ros-message)
  ((motorsRunning
    :reader motorsRunning
    :initarg :motorsRunning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mav_ctrl_motors-response (<mav_ctrl_motors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_ctrl_motors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_ctrl_motors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-srv:<mav_ctrl_motors-response> is deprecated: use asctec_hl_comm-srv:mav_ctrl_motors-response instead.")))

(cl:ensure-generic-function 'motorsRunning-val :lambda-list '(m))
(cl:defmethod motorsRunning-val ((m <mav_ctrl_motors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-srv:motorsRunning-val is deprecated.  Use asctec_hl_comm-srv:motorsRunning instead.")
  (motorsRunning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_ctrl_motors-response>) ostream)
  "Serializes a message object of type '<mav_ctrl_motors-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motorsRunning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_ctrl_motors-response>) istream)
  "Deserializes a message object of type '<mav_ctrl_motors-response>"
    (cl:setf (cl:slot-value msg 'motorsRunning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_ctrl_motors-response>)))
  "Returns string type for a service object of type '<mav_ctrl_motors-response>"
  "asctec_hl_comm/mav_ctrl_motorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_ctrl_motors-response)))
  "Returns string type for a service object of type 'mav_ctrl_motors-response"
  "asctec_hl_comm/mav_ctrl_motorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_ctrl_motors-response>)))
  "Returns md5sum for a message object of type '<mav_ctrl_motors-response>"
  "e005c4128d496dadc787b05eb5384496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_ctrl_motors-response)))
  "Returns md5sum for a message object of type 'mav_ctrl_motors-response"
  "e005c4128d496dadc787b05eb5384496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_ctrl_motors-response>)))
  "Returns full string definition for message of type '<mav_ctrl_motors-response>"
  (cl:format cl:nil "bool      motorsRunning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_ctrl_motors-response)))
  "Returns full string definition for message of type 'mav_ctrl_motors-response"
  (cl:format cl:nil "bool      motorsRunning~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_ctrl_motors-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_ctrl_motors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_ctrl_motors-response
    (cl:cons ':motorsRunning (motorsRunning msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mav_ctrl_motors)))
  'mav_ctrl_motors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mav_ctrl_motors)))
  'mav_ctrl_motors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_ctrl_motors)))
  "Returns string type for a service object of type '<mav_ctrl_motors>"
  "asctec_hl_comm/mav_ctrl_motors")