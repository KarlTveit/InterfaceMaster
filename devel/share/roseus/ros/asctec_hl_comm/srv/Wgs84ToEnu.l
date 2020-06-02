;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::Wgs84ToEnu)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'Wgs84ToEnu (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::WGS84TOENU")
  (make-package "ASCTEC_HL_COMM::WGS84TOENU"))
(unless (find-package "ASCTEC_HL_COMM::WGS84TOENUREQUEST")
  (make-package "ASCTEC_HL_COMM::WGS84TOENUREQUEST"))
(unless (find-package "ASCTEC_HL_COMM::WGS84TOENURESPONSE")
  (make-package "ASCTEC_HL_COMM::WGS84TOENURESPONSE"))

(in-package "ROS")





(defclass asctec_hl_comm::Wgs84ToEnuRequest
  :super ros::object
  :slots (_lat _lon _alt ))

(defmethod asctec_hl_comm::Wgs84ToEnuRequest
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass asctec_hl_comm::Wgs84ToEnuResponse
  :super ros::object
  :slots (_x _y _z ))

(defmethod asctec_hl_comm::Wgs84ToEnuResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass asctec_hl_comm::Wgs84ToEnu
  :super ros::object
  :slots ())

(setf (get asctec_hl_comm::Wgs84ToEnu :md5sum-) "b575b64084ce80473164a1c8719452c6")
(setf (get asctec_hl_comm::Wgs84ToEnu :datatype-) "asctec_hl_comm/Wgs84ToEnu")
(setf (get asctec_hl_comm::Wgs84ToEnu :request) asctec_hl_comm::Wgs84ToEnuRequest)
(setf (get asctec_hl_comm::Wgs84ToEnu :response) asctec_hl_comm::Wgs84ToEnuResponse)

(defmethod asctec_hl_comm::Wgs84ToEnuRequest
  (:response () (instance asctec_hl_comm::Wgs84ToEnuResponse :init)))

(setf (get asctec_hl_comm::Wgs84ToEnuRequest :md5sum-) "b575b64084ce80473164a1c8719452c6")
(setf (get asctec_hl_comm::Wgs84ToEnuRequest :datatype-) "asctec_hl_comm/Wgs84ToEnuRequest")
(setf (get asctec_hl_comm::Wgs84ToEnuRequest :definition-)
      "float64 lat
float64 lon
float64 alt
---
float64 x
float64 y
float64 z
")

(setf (get asctec_hl_comm::Wgs84ToEnuResponse :md5sum-) "b575b64084ce80473164a1c8719452c6")
(setf (get asctec_hl_comm::Wgs84ToEnuResponse :datatype-) "asctec_hl_comm/Wgs84ToEnuResponse")
(setf (get asctec_hl_comm::Wgs84ToEnuResponse :definition-)
      "float64 lat
float64 lon
float64 alt
---
float64 x
float64 y
float64 z
")



(provide :asctec_hl_comm/Wgs84ToEnu "b575b64084ce80473164a1c8719452c6")


