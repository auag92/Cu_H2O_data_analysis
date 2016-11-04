FROM ubuntu:14.04

MAINTAINER Apaar Shanker <apaar92@gmail.com>

USER root

# Install python dependencies
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y build-essential python3-dev
RUN apt-get install -y python3-pip
ADD requirements.txt requirements.txt
RUN pip3 install -Ur requirements.txt
# Add datafiles
ADD properties.dat properties.dat
ADD distance_map.dat distance_map.dat
