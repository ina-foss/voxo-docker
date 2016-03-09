FROM ubuntu:14.04
MAINTAINER Vincent Jousse <vincent@jousse.org>

ADD voxo-daemon /opt/voxo-daemon
ADD voxo-lib /opt/voxo-lib

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    git-core \
    build-essential \
    libav-tools \
    sox

RUN ln -s /usr/bin/avconv /usr/bin/ffmpeg

RUN sed -i '/-e git.*/c\-e /opt/voxo-lib' /opt/voxo-daemon/requirements.txt

RUN cd /opt/voxo-daemon && \
    pip3 install -r requirements.txt
