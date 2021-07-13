;; Auto-generated. Do not edit!


(when (boundp 'lcsr_nettools::TopicMeasurements)
  (if (not (find-package "LCSR_NETTOOLS"))
    (make-package "LCSR_NETTOOLS"))
  (shadow 'TopicMeasurements (find-package "LCSR_NETTOOLS")))
(unless (find-package "LCSR_NETTOOLS::TOPICMEASUREMENTS")
  (make-package "LCSR_NETTOOLS::TOPICMEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude TopicMeasurements.msg.html


(defclass lcsr_nettools::TopicMeasurements
  :super ros::object
  :slots (_msg_loss _first_recv_time _latest_recv_time _latency _frequency ))

(defmethod lcsr_nettools::TopicMeasurements
  (:init
   (&key
    ((:msg_loss __msg_loss) 0.0)
    ((:first_recv_time __first_recv_time) (instance ros::time :init))
    ((:latest_recv_time __latest_recv_time) (instance ros::time :init))
    ((:latency __latency) (instance lcsr_nettools::StatisticsMeasurements :init))
    ((:frequency __frequency) (instance lcsr_nettools::StatisticsMeasurements :init))
    )
   (send-super :init)
   (setq _msg_loss (float __msg_loss))
   (setq _first_recv_time __first_recv_time)
   (setq _latest_recv_time __latest_recv_time)
   (setq _latency __latency)
   (setq _frequency __frequency)
   self)
  (:msg_loss
   (&optional __msg_loss)
   (if __msg_loss (setq _msg_loss __msg_loss)) _msg_loss)
  (:first_recv_time
   (&optional __first_recv_time)
   (if __first_recv_time (setq _first_recv_time __first_recv_time)) _first_recv_time)
  (:latest_recv_time
   (&optional __latest_recv_time)
   (if __latest_recv_time (setq _latest_recv_time __latest_recv_time)) _latest_recv_time)
  (:latency
   (&rest __latency)
   (if (keywordp (car __latency))
       (send* _latency __latency)
     (progn
       (if __latency (setq _latency (car __latency)))
       _latency)))
  (:frequency
   (&rest __frequency)
   (if (keywordp (car __frequency))
       (send* _frequency __frequency)
     (progn
       (if __frequency (setq _frequency (car __frequency)))
       _frequency)))
  (:serialization-length
   ()
   (+
    ;; float64 _msg_loss
    8
    ;; time _first_recv_time
    8
    ;; time _latest_recv_time
    8
    ;; lcsr_nettools/StatisticsMeasurements _latency
    (send _latency :serialization-length)
    ;; lcsr_nettools/StatisticsMeasurements _frequency
    (send _frequency :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _msg_loss
       (sys::poke _msg_loss (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _first_recv_time
       (write-long (send _first_recv_time :sec) s) (write-long (send _first_recv_time :nsec) s)
     ;; time _latest_recv_time
       (write-long (send _latest_recv_time :sec) s) (write-long (send _latest_recv_time :nsec) s)
     ;; lcsr_nettools/StatisticsMeasurements _latency
       (send _latency :serialize s)
     ;; lcsr_nettools/StatisticsMeasurements _frequency
       (send _frequency :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _msg_loss
     (setq _msg_loss (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _first_recv_time
     (send _first_recv_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _first_recv_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _latest_recv_time
     (send _latest_recv_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _latest_recv_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lcsr_nettools/StatisticsMeasurements _latency
     (send _latency :deserialize buf ptr-) (incf ptr- (send _latency :serialization-length))
   ;; lcsr_nettools/StatisticsMeasurements _frequency
     (send _frequency :deserialize buf ptr-) (incf ptr- (send _frequency :serialization-length))
   ;;
   self)
  )

(setf (get lcsr_nettools::TopicMeasurements :md5sum-) "6e15701183cd32bc7d08590562cf3f21")
(setf (get lcsr_nettools::TopicMeasurements :datatype-) "lcsr_nettools/TopicMeasurements")
(setf (get lcsr_nettools::TopicMeasurements :definition-)
      "float64 msg_loss
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



(provide :lcsr_nettools/TopicMeasurements "6e15701183cd32bc7d08590562cf3f21")


