#!/bin/bash

# install libs
sudo apt install python-picamera

# create service files
sudo cp webcam.service /lib/systemd/system/
sudo chmod 644 /lib/systemd/system/webcam.service

# reload daemon and enable webcam
sudo systemctl daemon-reload 
sudo systemctl enable webcam 
sudo systemctl start webcam 

# info
echo enter your raspberry on port 8000 and enjoy the webcam session
echo e.g. http://192.168.0.2:8000
