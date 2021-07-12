;; Auto-generated. Do not edit!


(when (boundp 'lcsr_nettools::HeaderSample)
  (if (not (find-package "LCSR_NETTOOLS"))
    (make-package "LCSR_NETTOOLS"))
  (shadow 'HeaderSample (find-package "LCSR_NETTOOLS")))
(unless (find-package "LCSR_NETTOOLS::HEADERSAMPLE")
  (make-package "LCSR_NETTOOLS::HEADERSAMPLE"))

(in-package "ROS")
;;//! \htmlinclude HeaderSample.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcsr_nettools::HeaderSample
  :super ros::object
  :slots (_header _recv_time ))

(defmethod lcsr_nettools::HeaderSample
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:recv_time __recv_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _recv_time __recv_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:recv_time
   (&optional __recv_time)
   (if __recv_time (setq _recv_time __recv_time)) _recv_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _recv_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _recv_time
       (write-long (send _recv_time :sec) s) (write-long (send _recv_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _recv_time
     (send _recv_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _recv_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lcsr_nettools::HeaderSample :md5sum-) "911218caa31c03d4d7aa8f57a7bb8a69")
(setf (get lcsr_nettools::HeaderSample :datatype-) "lcsr_nettools/HeaderSample")
(setf (get lcsr_nettools::HeaderSample :definition-)
      "# The header of this sample
std_msgs/Header header
# The time this sample was received.
time recv_time

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :lcsr_nettools/HeaderSample "911218caa31c03d4d7aa8f57a7bb8a69")


