#!/bin/bash

docker run -d -p 8000:8000 --device /dev/video0 --name webcam --restart always sybex/webcam

exit 0
