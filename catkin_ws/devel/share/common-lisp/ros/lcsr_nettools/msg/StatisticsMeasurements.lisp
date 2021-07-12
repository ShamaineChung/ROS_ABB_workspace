; Auto-generated. Do not edit!


(cl:in-package lcsr_nettools-msg)


;//! \htmlinclude StatisticsMeasurements.msg.html

(cl:defclass <StatisticsMeasurements> (roslisp-msg-protocol:ros-message)
  ((avg
    :reader avg
    :initarg :avg
    :type cl:float
    :initform 0.0)
   (std
    :reader std
    :initarg :std
    :type cl:float
    :initform 0.0)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass StatisticsMeasurements (<StatisticsMeasurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatisticsMeasurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatisticsMeasurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcsr_nettools-msg:<StatisticsMeasurements> is deprecated: use lcsr_nettools-msg:StatisticsMeasurements instead.")))

(cl:ensure-generic-function 'avg-val :lambda-list '(m))
(cl:defmethod avg-val ((m <StatisticsMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:avg-val is deprecated.  Use lcsr_nettools-msg:avg instead.")
  (avg m))

(cl:ensure-generic-function 'std-val :lambda-list '(m))
(cl:defmethod std-val ((m <StatisticsMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:std-val is deprecated.  Use lcsr_nettools-msg:std instead.")
  (std m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <StatisticsMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:min-val is deprecated.  Use lcsr_nettools-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <StatisticsMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:max-val is deprecated.  Use lcsr_nettools-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatisticsMeasurements>) ostream)
  "Serializes a message object of type '<StatisticsMeasurements>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'avg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatisticsMeasurements>) istream)
  "Deserializes a message object of type '<StatisticsMeasurements>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'avg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatisticsMeasurements>)))
  "Returns string type for a message object of type '<StatisticsMeasurements>"
  "lcsr_nettools/StatisticsMeasurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatisticsMeasurements)))
  "Returns string type for a message object of type 'StatisticsMeasurements"
  "lcsr_nettools/StatisticsMeasurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatisticsMeasurements>)))
  "Returns md5sum for a message object of type '<StatisticsMeasurements>"
  "a4354a53d5e13d816ed73d7269ee2cb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatisticsMeasurements)))
  "Returns md5sum for a message object of type 'StatisticsMeasurements"
  "a4354a53d5e13d816ed73d7269ee2cb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatisticsMeasurements>)))
  "Returns full string definition for message of type '<StatisticsMeasurements>"
  (cl:format cl:nil "float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatisticsMeasurements)))
  "Returns full string definition for message of type 'StatisticsMeasurements"
  (cl:format cl:nil "float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatisticsMeasurements>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatisticsMeasurements>))
  "Converts a ROS message object to a list"
  (cl:list 'StatisticsMeasurements
    (cl:cons ':avg (avg msg))
    (cl:cons ':std (std msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
