FROM ubuntu:latest

# Using the latest ubuntu image as base

# Installing Dependencies

RUN apt-get update && apt-get install -y python3 python3-pip libxrender1 libsm6 wget git

# Installing Opencv and numpy


RUN pip3 install opencv-python numpy


# Cloning the YOLO Module From my Repo


RUN git clone https://github.com/AirDronzer/Docker-Yolo.git


# Directory to Yolo & Downloading YOLO V3 Model


RUN wget https://pjreddie.com/media/files/yolov3.weights -P /Docker-Yolo/YOLO\ MODEL/yolov3-coco

# Moving Conetent to root dir

RUN mv /Docker-Yolo/YOLO\ MODEL/* /





# Thanks to Dark Net for Weights



