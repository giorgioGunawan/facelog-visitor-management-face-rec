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
 
##another_ws system requirement and description

To be able to operate the system, part 2 requires Linux (at least Trusty). The packages in src are open-sourced ROS packages. procrob_functional was used and cloned from http://wiki.ros.org/face_recognition, usb_cam was used and cloned from http://wiki.ros.org/usb_cam and lastly, image_common was used and cloned from http://wiki.ros.org/image_common. The packages aforementioned was used for facial recognition, connecting to standard USB cameras and for transporting images on ROS respectively. 
There have been changes from the final version as well as 3 python script developed by the team that are contained in beginner_tutorials. The package itself for beginner_tutorials is an example package when starting on ROS. There is no relevance for the beginner-tutorials package usage for this project but is kept as it already contains the python scripts in file called scripts.

How to set up and use another_ws

    Have Ubuntu (trusty or higher), ROS (indigo or higher) installed
    Git clone this source code
    Open up terminal and source it by "source devel/setup.bash"
    Perform the following commands:

     i. Tab 1 "roscore"

     ii. Tab 2 "rosrun usb_cam usb_cam_node usb_cam_node/image_raw:=camera/image_raw _image_height:=480 _image_width:=640"

     iii. Tab 3 "rosrun face_recognition Fserver"

     iv. Tab 4 "rosrun face_recognition Fclient"

     v. Tab 5 (cd src/beginner_tutorials/script) "python flagger.py"

    Reset 4.iii, 4.iv, 4.v everytime you update a person, either new or existing

##visitorlog.dx.am folder system requirement and description

The folder visitorlog.dx.am is currently hosted on AWARDSPACE that is a free hosting website. It contains code that parses, scrapes and manipulates the google sheet database. It is ALREADY hosted and does not need to be touched. IF to be replicated, do change the google sheets ID and make your own. The current databases are:

    Visitor Database - to log in informations about visitors and keep it
    Flags - as a flag that can be manipulated from buttons on the website and will signal ROS codes to turn on (e.g camera)
    Contact Email - to add emails of employees so visitors can contact them when they come over using automated email

