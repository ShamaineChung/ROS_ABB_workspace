#! /usr/bin/env python

import rospy
from moveit_python import MoveGroupInterface
from moveit_msgs.msg import MoveItErrorCodes
from pub_sub_example.msg import JointPositions
import time

class TrajectorySubscriber(object):

    def __init__(self):
        
        self.pos_sub = rospy.Subscriber('/arm_positions', JointPositions, self.positions_callback)
        self.move_group = MoveGroupInterface("arm", "robot_base_link")

        self.joints = ["robot_arm_elbow_joint", "robot_arm_shoulder_lift_joint", "robot_arm_shoulder_pan_joint",
                       "robot_arm_wrist_1_joint", "robot_arm_wrist_2_joint", "robot_arm_wrist_3_joint"]

        self.joint_positions = []
        #self.pose = [-1.95, -0.43, 0.0, -1.51, 2.32, 1.07]

    def positions_callback(self, msg):
        self.joint_positions = msg.joint_positions

    def execute_trajectory(self):
        while not rospy.is_shutdown():
                                                                        #0.02
            result = self.move_group.moveToJointPosition(self.joints, self.joint_positions, 0.2)
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
