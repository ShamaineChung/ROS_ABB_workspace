#! /usr/bin/env python

import rospy
from moveit_python import MoveGroupInterface
from moveit_msgs.msg import MoveItErrorCodes
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
import time

class TrajectorySubscriber(object):

    def __init__(self):
        
        self.pos_sub = rospy.Subscriber('/ee_pose', PoseStamped, self.ee_callback)
        self.move_group = MoveGroupInterface("manipulator", "base_link")

        self.gripper_frame = 'tool0'
        self.ee_pose = PoseStamped()

    def ee_callback(self, msg):
        self.ee_pose = msg

    def execute_trajectory(self):
        while not rospy.is_shutdown():

            result = self.move_group.moveToPose(self.ee_pose, self.gripper_frame,0.2)
            if result:

                if result.error_code.val == MoveItErrorCodes.SUCCESS:
                    rospy.loginfo("Trajectory successfully executed!")
                else:
                    rospy.logerr("Arm goal in state: %s", self.move_group.get_move_action().get_state())
            else:
                rospy.logerr("MoveIt failure! No result returned.")

        self.move_group.get_move_action().cancel_all_goals()


if __name__ == "__main__":
    rospy.init_node('trajectory_subscriber_node', anonymous=True)
    traj_sub_object = TrajectorySubscriber()
    time.sleep(2)
    traj_sub_object.execute_trajectory()
