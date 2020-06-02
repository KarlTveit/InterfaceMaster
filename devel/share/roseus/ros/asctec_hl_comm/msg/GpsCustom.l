;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::GpsCustom)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'GpsCustom (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::GPSCUSTOM")
  (make-package "ASCTEC_HL_COMM::GPSCUSTOM"))

(in-package "ROS")
;;//! \htmlinclude GpsCustom.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::GpsCustom
  :super ros::object
  :slots (_header _status _latitude _longitude _altitude _position_covariance _position_covariance_type _pressure_height _velocity_x _velocity_y _velocity_covariance ))

(defmethod asctec_hl_comm::GpsCustom
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance sensor_msgs::NavSatStatus :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    ((:pressure_height __pressure_height) 0.0)
    ((:velocity_x __velocity_x) 0.0)
    ((:velocity_y __velocity_y) 0.0)
    ((:velocity_covariance __velocity_covariance) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _position_covariance __position_covariance)
   (setq _position_covariance_type (round __position_covariance_type))
   (setq _pressure_height (float __pressure_height))
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
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:pressure_height
   (&optional __pressure_height)
   (if __pressure_height (setq _pressure_height __pressure_height)) _pressure_height)
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
    ;; sensor_msgs/NavSatStatus _status
    (send _status :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ;; float64 _pressure_height
    8
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
     ;; sensor_msgs/NavSatStatus _status
       (send _status :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;; float64 _pressure_height
       (sys::poke _pressure_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; sensor_msgs/NavSatStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _pressure_height
     (setq _pressure_height (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get asctec_hl_comm::GpsCustom :md5sum-) "ea845c87e3fc5ff92a4bebb639327746")
(setf (get asctec_hl_comm::GpsCustom :datatype-) "asctec_hl_comm/GpsCustom")
(setf (get asctec_hl_comm::GpsCustom :definition-)
      "# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# Header specifies ROS time and frame of reference for this fix.
Header header

# satellite fix status information
sensor_msgs/NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid.
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

uint8 position_covariance_type

float64 pressure_height

float64 velocity_x
float64 velocity_y
float64[4] velocity_covariance
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
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :asctec_hl_comm/GpsCustom "ea845c87e3fc5ff92a4bebb639327746")


