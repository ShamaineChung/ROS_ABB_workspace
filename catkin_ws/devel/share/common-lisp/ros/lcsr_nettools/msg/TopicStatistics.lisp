; Auto-generated. Do not edit!


(cl:in-package lcsr_nettools-msg)


;//! \htmlinclude TopicStatistics.msg.html

(cl:defclass <TopicStatistics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (recent_buffer_duration
    :reader recent_buffer_duration
    :initarg :recent_buffer_duration
    :type cl:real
    :initform 0)
   (recent
    :reader recent
    :initarg :recent
    :type lcsr_nettools-msg:TopicMeasurements
    :initform (cl:make-instance 'lcsr_nettools-msg:TopicMeasurements))
   (all_time
    :reader all_time
    :initarg :all_time
    :type lcsr_nettools-msg:TopicMeasurements
    :initform (cl:make-instance 'lcsr_nettools-msg:TopicMeasurements)))
)

(cl:defclass TopicStatistics (<TopicStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcsr_nettools-msg:<TopicStatistics> is deprecated: use lcsr_nettools-msg:TopicStatistics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:header-val is deprecated.  Use lcsr_nettools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:topic_name-val is deprecated.  Use lcsr_nettools-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'recent_buffer_duration-val :lambda-list '(m))
(cl:defmethod recent_buffer_duration-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:recent_buffer_duration-val is deprecated.  Use lcsr_nettools-msg:recent_buffer_duration instead.")
  (recent_buffer_duration m))

(cl:ensure-generic-function 'recent-val :lambda-list '(m))
(cl:defmethod recent-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:recent-val is deprecated.  Use lcsr_nettools-msg:recent instead.")
  (recent m))

(cl:ensure-generic-function 'all_time-val :lambda-list '(m))
(cl:defmethod all_time-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:all_time-val is deprecated.  Use lcsr_nettools-msg:all_time instead.")
  (all_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicStatistics>) ostream)
  "Serializes a message object of type '<TopicStatistics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'recent_buffer_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'recent_buffer_duration) (cl:floor (cl:slot-value msg 'recent_buffer_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'all_time) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicStatistics>) istream)
  "Deserializes a message object of type '<TopicStatistics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recent_buffer_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'all_time) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicStatistics>)))
  "Returns string type for a message object of type '<TopicStatistics>"
  "lcsr_nettools/TopicStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicStatistics)))
  "Returns string type for a message object of type 'TopicStatistics"
  "lcsr_nettools/TopicStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicStatistics>)))
  "Returns md5sum for a message object of type '<TopicStatistics>"
  "414ca0d7c2276abebacb6812196057cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicStatistics)))
  "Returns md5sum for a message object of type 'TopicStatistics"
  "414ca0d7c2276abebacb6812196057cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicStatistics>)))
  "Returns full string definition for message of type '<TopicStatistics>"
  (cl:format cl:nil "std_msgs/Header header~%~%string topic_name~%duration recent_buffer_duration~%~%lcsr_nettools/TopicMeasurements recent~%lcsr_nettools/TopicMeasurements all_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lcsr_nettools/TopicMeasurements~%float64 msg_loss~%time first_recv_time~%time latest_recv_time~%lcsr_nettools/StatisticsMeasurements latency~%lcsr_nettools/StatisticsMeasurements frequency~%~%================================================================================~%MSG: lcsr_nettools/StatisticsMeasurements~%float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicStatistics)))
  "Returns full string definition for message of type 'TopicStatistics"
  (cl:format cl:nil "std_msgs/Header header~%~%string topic_name~%duration recent_buffer_duration~%~%lcsr_nettools/TopicMeasurements recent~%lcsr_nettools/TopicMeasurements all_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lcsr_nettools/TopicMeasurements~%float64 msg_loss~%time first_recv_time~%time latest_recv_time~%lcsr_nettools/StatisticsMeasurements latency~%lcsr_nettools/StatisticsMeasurements frequency~%~%================================================================================~%MSG: lcsr_nettools/StatisticsMeasurements~%float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicStatistics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'topic_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'all_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicStatistics
    (cl:cons ':header (header msg))
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':recent_buffer_duration (recent_buffer_duration msg))
    (cl:cons ':recent (recent msg))
    (cl:cons ':all_time (all_time msg))
))
