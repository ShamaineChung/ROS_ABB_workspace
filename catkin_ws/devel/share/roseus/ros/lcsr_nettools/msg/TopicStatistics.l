;; Auto-generated. Do not edit!


(when (boundp 'lcsr_nettools::TopicStatistics)
  (if (not (find-package "LCSR_NETTOOLS"))
    (make-package "LCSR_NETTOOLS"))
  (shadow 'TopicStatistics (find-package "LCSR_NETTOOLS")))
(unless (find-package "LCSR_NETTOOLS::TOPICSTATISTICS")
  (make-package "LCSR_NETTOOLS::TOPICSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude TopicStatistics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcsr_nettools::TopicStatistics
  :super ros::object
  :slots (_header _topic_name _recent_buffer_duration _recent _all_time ))

(defmethod lcsr_nettools::TopicStatistics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:topic_name __topic_name) "")
    ((:recent_buffer_duration __recent_buffer_duration) (instance ros::time :init))
    ((:recent __recent) (instance lcsr_nettools::TopicMeasurements :init))
    ((:all_time __all_time) (instance lcsr_nettools::TopicMeasurements :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _topic_name (string __topic_name))
   (setq _recent_buffer_duration __recent_buffer_duration)
   (setq _recent __recent)
   (setq _all_time __all_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:recent_buffer_duration
   (&optional __recent_buffer_duration)
   (if __recent_buffer_duration (setq _recent_buffer_duration __recent_buffer_duration)) _recent_buffer_duration)
  (:recent
   (&rest __recent)
   (if (keywordp (car __recent))
       (send* _recent __recent)
     (progn
       (if __recent (setq _recent (car __recent)))
       _recent)))
  (:all_time
   (&rest __all_time)
   (if (keywordp (car __all_time))
       (send* _all_time __all_time)
     (progn
       (if __all_time (setq _all_time (car __all_time)))
       _all_time)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _topic_name
    4 (length _topic_name)
    ;; duration _recent_buffer_duration
    8
    ;; lcsr_nettools/TopicMeasurements _recent
    (send _recent :serialization-length)
    ;; lcsr_nettools/TopicMeasurements _all_time
    (send _all_time :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; duration _recent_buffer_duration
       (write-long (send _recent_buffer_duration :sec) s) (write-long (send _recent_buffer_duration :nsec) s)
     ;; lcsr_nettools/TopicMeasurements _recent
       (send _recent :serialize s)
     ;; lcsr_nettools/TopicMeasurements _all_time
       (send _all_time :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _recent_buffer_duration
     (send _recent_buffer_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _recent_buffer_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lcsr_nettools/TopicMeasurements _recent
     (send _recent :deserialize buf ptr-) (incf ptr- (send _recent :serialization-length))
   ;; lcsr_nettools/TopicMeasurements _all_time
     (send _all_time :deserialize buf ptr-) (incf ptr- (send _all_time :serialization-length))
   ;;
   self)
  )

(setf (get lcsr_nettools::TopicStatistics :md5sum-) "414ca0d7c2276abebacb6812196057cd")
(setf (get lcsr_nettools::TopicStatistics :datatype-) "lcsr_nettools/TopicStatistics")
(setf (get lcsr_nettools::TopicStatistics :definition-)
      "std_msgs/Header header

string topic_name
duration recent_buffer_duration

lcsr_nettools/TopicMeasurements recent
lcsr_nettools/TopicMeasurements all_time

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

================================================================================
MSG: lcsr_nettools/TopicMeasurements
float64 msg_loss
time first_recv_time
time latest_recv_time
lcsr_nettools/StatisticsMeasurements latency
lcsr_nettools/StatisticsMeasurements frequency

================================================================================
MSG: lcsr_nettools/StatisticsMeasurements
float64 avg
float64 std
float64 min
float64 max

")



(provide :lcsr_nettools/TopicStatistics "414ca0d7c2276abebacb6812196057cd")


