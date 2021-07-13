
(cl:in-package :asdf)

(defsystem "lcsr_nettools-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HeaderSample" :depends-on ("_package_HeaderSample"))
    (:file "_package_HeaderSample" :depends-on ("_package"))
    (:file "StatisticsMeasurements" :depends-on ("_package_StatisticsMeasurements"))
    (:file "_package_StatisticsMeasurements" :depends-on ("_package"))
    (:file "TopicMeasurements" :depends-on ("_package_TopicMeasurements"))
    (:file "_package_TopicMeasurements" :depends-on ("_package"))
    (:file "TopicStatistics" :depends-on ("_package_TopicStatistics"))
    (:file "_package_TopicStatistics" :depends-on ("_package"))
  ))