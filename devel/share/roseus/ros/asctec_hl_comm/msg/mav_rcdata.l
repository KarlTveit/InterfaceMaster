;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::mav_rcdata)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'mav_rcdata (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MAV_RCDATA")
  (make-package "ASCTEC_HL_COMM::MAV_RCDATA"))

(in-package "ROS")
;;//! \htmlinclude mav_rcdata.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::mav_rcdata
  :super ros::object
  :slots (_header _channel ))

(defmethod asctec_hl_comm::mav_rcdata
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:channel __channel) (make-array 8 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _channel __channel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16[8] _channel
    (* 2    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[8] _channel
     (dotimes (i 8)
       (write-word (elt _channel i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[8] _channel
   (dotimes (i (length _channel))
     (setf (elt _channel i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get asctec_hl_comm::mav_rcdata :md5sum-) "2511326b0deceba64dcfc173bba8678e")
(setf (get asctec_hl_comm::mav_rcdata :datatype-) "asctec_hl_comm/mav_rcdata")
(setf (get asctec_hl_comm::mav_rcdata :definition-)
      "Header header

uint16[8] channel
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

")



(provide :asctec_hl_comm/mav_rcdata "2511326b0deceba64dcfc173bba8678e")


