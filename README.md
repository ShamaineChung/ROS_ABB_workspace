# ROS_ABB_workspace

In order to implement this workspace, a suitable environment needs to be prepared.

1. [Hyper-V installation](#hyper-v)
2. [Ubuntu 16 Installation](#ubuntu-16)
3. [ROS Installation](#ros-robot-operating-system)
4. [ROS Robot Initialization](#launching-robot-controller)

## Hyper-V 
Ubuntu 16.04 is needed to setup as foundation of ROS software packages. The Ubuntu OS is deployed onto Hyper-V Virtual Machine Service which is available in Window Pro and Window Enterprise only. To enable Hyper-V, follow the steps in [Steps to enable Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v#:~:text=Right%20click%20on%20the%20Windows,Hyper%2DV%20and%20click%20OK.). 

After enabling Hyper-V, follow [Ubuntu 16.04 installation steps](https://www.youtube.com/watch?v=B_tnnDlUuzw&ab_channel=PeymanTechMedia). When Ubuntu is ready to use, go to **Virtual Switch Manager**.
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

First step is to launch a server to establish the connection with Hololens with ```roslaunch file_server abb_world2.launch```.
