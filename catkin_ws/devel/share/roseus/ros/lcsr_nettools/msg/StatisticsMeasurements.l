;; Auto-generated. Do not edit!


(when (boundp 'lcsr_nettools::StatisticsMeasurements)
  (if (not (find-package "LCSR_NETTOOLS"))
    (make-package "LCSR_NETTOOLS"))
  (shadow 'StatisticsMeasurements (find-package "LCSR_NETTOOLS")))
(unless (find-package "LCSR_NETTOOLS::STATISTICSMEASUREMENTS")
  (make-package "LCSR_NETTOOLS::STATISTICSMEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude StatisticsMeasurements.msg.html


(defclass lcsr_nettools::StatisticsMeasurements
  :super ros::object
  :slots (_avg _std _min _max ))

(defmethod lcsr_nettools::StatisticsMeasurements
  (:init
   (&key
    ((:avg __avg) 0.0)
    ((:std __std) 0.0)
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _avg (float __avg))
   (setq _std (float __std))
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:avg
   (&optional __avg)
   (if __avg (setq _avg __avg)) _avg)
  (:std
   (&optional __std)
   (if __std (setq _std __std)) _std)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float64 _avg
    8
    ;; float64 _std
    8
    ;; float64 _min
    8
    ;; float64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _avg
       (sys::poke _avg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std
       (sys::poke _std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min
       (sys::poke _min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max
       (sys::poke _max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _avg
     (setq _avg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std
     (setq _std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min
     (setq _min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max
     (setq _max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get lcsr_nettools::StatisticsMeasurements :md5sum-) "a4354a53d5e13d816ed73d7269ee2cb2")
(setf (get lcsr_nettools::StatisticsMeasurements :datatype-) "lcsr_nettools/StatisticsMeasurements")
(setf (get lcsr_nettools::StatisticsMeasurements :definition-)
      "float64 avg
float64 std
float64 min
float64 max

")



(provide :lcsr_nettools/StatisticsMeasurements "a4354a53d5e13d816ed73d7269ee2cb2")


