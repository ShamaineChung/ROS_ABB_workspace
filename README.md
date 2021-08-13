# ROS_ABB_workspace

Please cite using the following BibTex entry:

```
 @MastersThesis{ShamaineChung2021,
  title={RoSTAR: ROS-based Telerobotic Control via Augmented Reality},
  author={Shamaine, Niall, YuanSong},
  school={Athlone Institute of Technology, Ireland},
  year=2021,
  publisher = {GitHub}
  howpublished = {\url{https://github.com/ShamaineChung/ROS_ABB_workspace}},
}
```
This project ABB Robot Model heavily relies on the ROS Industrial Meta Package developed and maintained by Open Robotics. More specifically, it is a fork of (https://github.com/ros-industrial/abb_experimental). 

## Data Collection

A folder contain unity frame rate, path accuracy and absolute position accuracy data.

## Installation

In order to implement this workspace, a suitable environment needs to be prepared.

1. [Hyper-V installation](#hyper-v)
2. [Ubuntu 16 Installation](#ubuntu-16)
3. [ROS Installation](#ros-robot-operating-system)
4. [ROS Robot Initialization](#launching-robot-controller)

## Hyper-V 
Ubuntu 16.04 is needed to setup as foundation of ROS software packages. The Ubuntu OS is deployed onto Hyper-V Virtual Machine Service which is available in Window Pro and Window Enterprise only. To enable Hyper-V, follow the steps in [Steps to enable Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v#:~:text=Right%20click%20on%20the%20Windows,Hyper%2DV%20and%20click%20OK.). 

After enabling Hyper-V, follow [Ubuntu 16.04 installation steps](https://www.youtube.com/watch?v=B_tnnDlUuzw&ab_channel=PeymanTechMedia). When Ubuntu is ready to use, go to **Virtual Switch Manager**.path accuracy and absolute position accuracy data
![Capture](https://user-images.githubusercontent.com/86027470/125273341-ba4e4c80-e304-11eb-85d8-e0c147879275.PNG)


Create two virtual switch with names that indicates one is attached to physical ethernet adapter another is attached to wireless adapter. Click **New virtual network switch**, choose **External** then click **Create Virtual Swtich**. 
![Capture](https://user-images.githubusercontent.com/86027470/125273104-7bb89200-e304-11eb-84b5-38e6f332c8a9.PNG)

Change the **External Network** dropdown bar to physical wireless adapter for the first switch and physical ethernet adapter for the second.

![Capture](https://user-images.githubusercontent.com/86027470/125274162-993a2b80-e305-11eb-84b8-1415b0766d3f.PNG)


An example setup are as below.

![Untitled](https://user-images.githubusercontent.com/86027470/125274877-48770280-e306-11eb-814d-1e5dff5e5cb5.png)

Then go to Hyper-V setting of Ubuntu 16.04 virtual machine.

![Capture](https://user-images.githubusercontent.com/86027470/125275372-d652ed80-e306-11eb-86d5-1cf7415605e4.PNG)

The Virtual machine has one network adapter initially, a new network adapter is needed since two virtual switch is created. Add a **Network Adapter** and attached both wireless and ethernet virtual switch to each individual network adapter.

![Capture](https://user-images.githubusercontent.com/86027470/125277476-6003ba80-e309-11eb-88bf-ebc65b89c0da.PNG)

## Ubuntu 16

Follow the steps in [Installation of Ubuntu 16.04](https://www.youtube.com/watch?v=B_tnnDlUuzw&ab_channel=PeymanTechMedia). After the installation, find the **Network Connection**.

![Capture](https://user-images.githubusercontent.com/86027470/125305610-618fab80-e326-11eb-9bb7-638068072958.PNG)

Double click on the first two connections, if the first network adapter was attached to the virtual switch that is created based on physical wireless adapter change the *IP Address* as the image below.

![Capture](https://user-images.githubusercontent.com/86027470/125306524-348fc880-e327-11eb-8eef-cadd825f89fa.PNG)

Then change the second connection to the *IP Address*.

![Capture](https://user-images.githubusercontent.com/86027470/125306820-6f91fc00-e327-11eb-9f0a-ce493c22bcbe.PNG)

After the configuration, open a terminal and run this command ```sudo apt update && sudo apt upgrade -y```, this will update the Ubuntu software package to the latest version.

## ROS-Robot Operating System

The installation is in this website [Step to install ROS Kinetic](http://wiki.ros.org/kinetic/Installation/Ubuntu). Then follow this [Configurating ROS environment](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment) to setup the ROS environment. After configuration has benn done, download the catkin workspace in this repository, replace it with the current workspace and run ```catkin_make``` again.

## Launching Robot Controller

Before launching the server script, an ethernet cable need to be connected between ABB robot and current system. A hotspot need to be ready for connection between Hololens and local system as well.

First step is to open a terminal and launch a server to establish the connection with Hololens by executing this command ```roslaunch file_server abb_world2.launch```. Then start another terminal which execute this command ``` roslaunch abb_irb1200_5_90_moveit_config abb_planning_execution.launch sim:=false robot_ip:=192.168.44.23``` to establish connection with ABB robot. Open a third terminal to subscribe to Hololens robot state and coordinate topic in real-time by executing ``` rosrun pub_sub_example robot_manipulator_v1.py```. 

**Both Version 1 and 2 is able to execute ABB robot arm trajectory. Version 1 collect path accuracy data, matplotlib will get the current end effector pose every second. Version 2 collect absolute position accuracy data, the position measurement are stored only after the end effector arrived at each pose.**

If error occurs, check the incoming message of topic with ```rostopic /ee_pose```.
