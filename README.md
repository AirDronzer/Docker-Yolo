# Docker-Yolo
## Docker-Yolo is Project for IIEC-Docker Training. It uses Opencv and YoloV3 (You Only Look Once) Model for Real Time Object Detection.Its build with Docker Resources so that everyone can get the idea how the Real Time Object Detection looks like. Its very basic and uses very less resources in backend. Its Combined with docker so that everyone can easily install and test by themself. The Installion is Very Easy and works out of the box.

# Requirements

          Docker 19 Must be Installed.


Note: This Project Only Works on Linux as Webcam Docker Support is still not present in the Windows & Mac.
# Installation Guide
There are 2 Methods for Installation
## Method 1 - Consumes Less Internet

1. Clone My Repo Via 

          git clone https://github.com/AirDronzer/Docker-Yolo.git
          
2. cd /Docker-Yolo
3. Build the image With Docker

          docker build [PATH OF THE Docker-Yalo Folder] -t docker-yolo
          
4. Open Terminal in the Docker-Yalo Folder

          sudo bash run.sh
          
5. You will be Inside your Container

## Method 2 - Consumes More Internet but more Efficient

1.Pull the Image From the Docker-Hub

          docker pull airdronzer/docker-yolo
          
2.Run the Folliwing Commands

          xhost +local:docker

          XSOCK=/tmp/.X11-unix

          XAUTH=/tmp/.docker.xauth

          xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
          
3.Finally to run the Container

          docker run -m 8GB -it --rm --device=/dev/video0 -e DISPLAY=$DISPLAY -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e    XAUTHORITY=$XAUTH --env QT_X11_NO_MITSHM=1 airdronzer/docker-yolo
          
# Usage

## To Run the type the below command inside th conatiner

           python3 yolo.py




![example](https://user-images.githubusercontent.com/22397360/80278578-39ae2b00-8715-11ea-8a54-8de8d3f49c3b.gif)
