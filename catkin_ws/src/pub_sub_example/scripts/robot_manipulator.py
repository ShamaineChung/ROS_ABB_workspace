#! /usr/bin/env python
from threading import Thread
from datetime import date
import subprocess, os, sys, rospy, rospkg, genpy, yaml, copy, time, csv
import geometry_msgs.msg, moveit_msgs.msg, tf2_ros, logging
from moveit_python import MoveGroupInterface
from moveit_commander import RobotCommander, PlanningSceneInterface, MoveGroupCommander
from moveit_commander import roscpp_initialize, roscpp_shutdown
from moveit_msgs.msg import RobotState, Grasp, MoveItErrorCodes
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
from std_msgs.msg import String
from pub_sub_example.msg import JointPositions

class TrajectorySubscriber(object):

    def __init__(self):

        rospy.init_node('trajectory_subscriber_node', anonymous=True)
       
        self.pose_sub = rospy.Subscriber('/ee_pose', String, self.ee_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)
        self.msg_sub = rospy.Subscriber('/ee_message', String, self.msg_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)

        self.pose_move_group = MoveGroupInterface("abb_arm", "base_link")

        self.group = MoveGroupCommander('abb_arm')

        self.ee_pose = String()

        self.new_ee_pose = PoseStamped()

        self.new_ee_pose.header.frame_id = 'base_link'

        self.ee_msg = String()

        self.ee_pose_array = []

        self.gripper_frame = 'tool0'

        self.allow_capture = False
        self.start_timer = False

        self.got_msg = 0
        self.execute_iteration = 0

        if os.path.exists('ros_coord.csv'):
            os.remove('ros_coord.csv')

        if os.path.exists('unity_coord.csv'):
            os.remove('unity_coord.csv')

    def ee_callback(self, msg):
        self.ee_pose = str(msg.data)

    def msg_callback(self,msg):
        self.ee_msg = str(msg.data)

    def time_counter(self):

        rospy.loginfo("Timer Started")
        time_array = []
        time = 1
        while not rospy.is_shutdown():

            if self.start_timer == True:
                time_array.append(time)
                rospy.sleep(0.001)
                time += 1

            if self.got_msg == 1:
                self.execute_iteration += 1
                fields = [date.today().strftime("%B %d %Y") + ' (Iteration - ' + str(self.execute_iteration) + ')']

                self.array_to_csv('timer.csv',fields,time_array)
                time_array = []
                time = 1
                rospy.loginfo("Timer Ended")

    def extract_coord(self):
        rospy.loginfo("Capturing realtime robot position.")
        ros_csv_array = []

        while not rospy.is_shutdown():

            if self.allow_capture == True:
                pose_info = self.group.get_current_pose()
                ros_csv_array.append([pose_info.pose.position.x,
                                      pose_info.pose.position.y,
                                      pose_info.pose.position.z - 0.4])

            if self.got_msg == 1:
                fields = ['x','y','z']
                self.array_to_csv('ros_coord.csv',fields,time_array)
               
                ros_csv_array = []
                self.got_msg = 2

    def array_to_csv(self,file_name,fields,array):

        file = open(file_name,'w')
        file_csv = csv.writer(file)
        file_csv.writerow(fields)
        file_csv.writerows(array)

        file.close()

    def execute_trajectory(self):
        
        while not rospy.is_shutdown():
            #print(str(self.ee_msg))
            try:

                if self.ee_msg == "reset":
                    rospy.loginfo("Reset robot to home position.")
                    #self.joint_move_group.moveToJointPosition(self.joints, self.joint_positions, 0.2)
                    joint_goal = self.group.get_current_joint_values()

                    for i in range(6):
                        joint_goal[i] = 0.0

                    self.group.go(joint_goal, wait=True)
                    self.group.stop()
                    self.group.clear_pose_targets()

                    self.ee_pose_array = []
                    self.got_msg = 0

                if self.ee_msg == "":

                    if self.ee_pose != "" and self.got_msg == 0:

                        poses = self.ee_pose.split('_')
                        
                        if len(poses) != 0:
                            self.start_timer = True
                            unity_csv_array = []
                            ros_csv_array = []
                            
                            for index, pose in enumerate(poses):
                                if self.ee_msg == "reset":
                                    break

                                if index != len(poses) - 1:
                                    position_data, orientation_data = pose.split('|')

                                    position = position_data.split(',')
                                    orientation = orientation_data.split(',')

                                    unity_csv_array.append([float(position[0]),
                                                            float(position[1]),
                                                            float(position[2])])

                                    # current_pose = self.group.get_current_pose().pose
                                    # current_pose.position.x = float(position[0])
                                    # current_pose.position.y = float(position[1])
                                    # current_pose.position.z = float(position[2])

                                    # self.ee_pose_array.append(copy.deepcopy(current_pose))
                                    self.ee_pose_array.append(Pose(Point(float(position[0]),
                                                                         float(position[1]),
                                                                         float(position[2])),
                                                              Quaternion(float(orientation[0]),
                                                                         float(orientation[1]),
                                                                         float(orientation[2]),
                                                                         float(orientation[3]))))


                            rospy.loginfo("Done storing coordinates.")
                           
                            fields = ['x','y','z']

                            unity_csv_array.pop(0)
                            self.array_to_csv('unity_coord.csv', fields, unity_csv_array)

                            for index, pose in enumerate(self.ee_pose_array):
                                
                                if index == 2:
                                    self.allow_capture = True
                                #print("test_1")
                                self.new_ee_pose.pose = pose
                                self.new_ee_pose.header.stamp = rospy.Time.now()
                               
                                result = self.pose_move_group.moveToPose(self.new_ee_pose, self.gripper_frame,0.01)
                                
                                                      # Reason to deduct 0.4 is because the robot arm is position 40 cm above origin in z axis
                                                      # (Refer to irb1200_5_90_macro.xacro)

                                #print("test_3")
                                #group_variable_values = self.group.get_current_joint_values()
                                if result:

                                    if result.error_code.val == MoveItErrorCodes.SUCCESS:
                                    #rospy.loginfo("Trajectory successfully executed!")

                                        rospy.loginfo("Positions: [" + str(pose.position.x) + ", " + str(pose.position.y) + ", " + str(pose.position.z) +"]")
                                        if self.ee_msg == "reset":
                                            break

                                    else:
                                        rospy.logerr("Arm goal in state: %s", self.pose_move_group.get_move_action().get_state())

                                elif result == None:
                                    rospy.logerr("MoveIt failure! No result returned.")
                            
                            self.allow_capture = False
                            self.start_timer = False
                            self.got_msg = 1

            except tf2_ros.InvalidArgumentException:
                rospy.logwarn("ROS Invalid Argument happens.")
                #rospy.sleep(1)
               
        self.pose_move_group.get_move_action().cancel_all_goals()

if __name__ == "__main__": 
    
    traj_sub_object = TrajectorySubscriber()
    #traj_sub_object.test_run()
    time.sleep(2)
    rospy.loginfo("Initialized rospy.")
    
    Thread(target=traj_sub_object.extract_coord).start()
    Thread(target=traj_sub_object.execute_trajectory).start()
    traj_sub_object.timeCounter();
    #traj_sub_object.execute_trajectory()
try:
    sys.stdout.close()
except:
    pass
    
    
    
