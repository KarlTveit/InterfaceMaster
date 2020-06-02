;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::GpsCustomCartesian)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'GpsCustomCartesian (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::GPSCUSTOMCARTESIAN")
  (make-package "ASCTEC_HL_COMM::GPSCUSTOMCARTESIAN"))

(in-package "ROS")
;;//! \htmlinclude GpsCustomCartesian.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::GpsCustomCartesian
  :super ros::object
  :slots (_header _position _position_covariance _velocity_x _velocity_y _velocity_covariance ))

(defmethod asctec_hl_comm::GpsCustomCartesian
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:velocity_x __velocity_x) 0.0)
    ((:velocity_y __velocity_y) 0.0)
    ((:velocity_covariance __velocity_covariance) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _position_covariance __position_covariance)
   (setq _velocity_x (float __velocity_x))
   (setq _velocity_y (float __velocity_y))
   (setq _velocity_covariance __velocity_covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:velocity_x
   (&optional __velocity_x)
   (if __velocity_x (setq _velocity_x __velocity_x)) _velocity_x)
  (:velocity_y
   (&optional __velocity_y)
   (if __velocity_y (setq _velocity_y __velocity_y)) _velocity_y)
  (:velocity_covariance
   (&optional __velocity_covariance)
   (if __velocity_covariance (setq _velocity_covariance __velocity_covariance)) _velocity_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; float64 _velocity_x
    8
    ;; float64 _velocity_y
    8
    ;; float64[4] _velocity_covariance
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _velocity_x
       (sys::poke _velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_y
       (sys::poke _velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[4] _velocity_covariance
     (dotimes (i 4)
       (sys::poke (elt _velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _velocity_x
     (setq _velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_y
     (setq _velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[4] _velocity_covariance
   (dotimes (i (length _velocity_covariance))
     (setf (elt _velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get asctec_hl_comm::GpsCustomCartesian :md5sum-) "5d2c0118ba9eb587c756024a82d4d4a6")
(setf (get asctec_hl_comm::GpsCustomCartesian :datatype-) "asctec_hl_comm/GpsCustomCartesian")
(setf (get asctec_hl_comm::GpsCustomCartesian :definition-)
      "
Header header

geometry_msgs/Point   position
float64[9]            position_covariance
float64               velocity_x
float64               velocity_y
float64[4]            velocity_covariance

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :asctec_hl_comm/GpsCustomCartesian "5d2c0118ba9eb587c756024a82d4d4a6")


