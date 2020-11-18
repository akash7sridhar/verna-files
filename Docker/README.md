UBUNTU Container

The Docker file launches and UBUNTU 16.04 version container with telnet , Curl , ffmpeg packages installed

Getting started

The instruction will usage information of the Docker file

Prerequisites

In order to run the container you'll need docker installed

Usage

Build the docker command by the following command

docker build <folder-name> -t <your-container-name>

After the build is successfull you can run the container

docker run -it <your-container-name> bash

The -it will run the docker with terminal and interactive access



