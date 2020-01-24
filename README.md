# facelog-visitor-management-face-rec
Facelog is a visitor management system utilising facial recognition that runs on the web at www.facelog.dx.am and has to be utilised with a ROS (robot operating sytem) program that is contained in the following workspace that is another_ws. 

An example of the system in action can be seen here:
https://www.youtube.com/watch?v=kLG9VKfHryc&t=5s

The maintainers and developers of this repo is:

    Giorgio Gunawan (grggnwn@gmail.com)
    Vincent Ng (ngkauiin@gmail.com)

The system can be described in 2 parts that is:

    [facelog]
    The website that runs on:
        HTML & CSS
        Javascript
        PHP
        Google Sheets (As Database)

    [another_ws]
    Facial recognition and flagger software running on:
        Robot Operating System - C++
        Python
        Google Sheets (As Database)
 
another_ws system requirement and description

To be able to operate the system, part 2 requires Linux (at least Trusty). The packages in src are open-sourced ROS packages. procrob_functional was used and cloned from http://wiki.ros.org/face_recognition, usb_cam was used and cloned from http://wiki.ros.org/usb_cam and lastly, image_common was used and cloned from http://wiki.ros.org/image_common. The packages aforementioned was used for facial recognition, connecting to standard USB cameras and for transporting images on ROS respectively. 
There have been changes from the final version as well as 3 python script developed by the team that are contained in beginner_tutorials. The package itself for beginner_tutorials is an example package when starting on ROS. There is no relevance for the beginner-tutorials package usage for this project but is kept as it already contains the python scripts in file called scripts.

How to set up and use another_ws
1. Have Ubuntu (trusty or higher), ROS (indigo or higher) installed
2. Git clone this source code
3. Open up terminal and source it by "source devel/setup.bash"
4. Perform the following commands:
    i. Tab 1 "roscore"
    ii. Tab 2 "rosrun usb_cam usb_cam_node usb_cam_node/image_raw:=camera/image_raw _image_height:=480 _image_width:=640"
facelog system requirement and description
    iii. Tab 3 "rosrun face_recognition Fserver"
    iv. Tab 4 "rosrun face_recognition Fclient"
    v. Tab 5 (cd src/beginner_tutorials/script) "python flagger.py"
5. Reset 4.iii, 4.iv, 4.v everytime you update a person, either new or existing
