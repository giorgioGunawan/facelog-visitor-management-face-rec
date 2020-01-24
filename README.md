# facelog-visitor-management-face-rec
Facelog is a visitor management system utilising facial recognition that runs on the web at www.facelog.dx.am and has to be utilised with a ROS (robot operating sytem) program that is contained in the following workspace that is another_ws. 

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

facelog system requirement and description
