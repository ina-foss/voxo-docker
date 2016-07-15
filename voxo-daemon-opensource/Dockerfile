FROM voxolab/voxo-fast-opensource
MAINTAINER Vincent Jousse <vincent@jousse.org>

ADD voxo-daemon /opt/voxo-daemon
ADD voxo-lib /opt/voxo-lib

# If you want to decode some french, you should include the
# recasing script
ADD majAuto /opt/majAuto

ADD xvfb /etc/init.d/xvfb
RUN chmod +x /etc/init.d/xvfb

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    python3-lxml \
    git-core \
    build-essential \
    libav-tools \
    sox \
    xvfb \
    mono-complete

RUN ln -s /usr/bin/avconv /usr/bin/ffmpeg

RUN update-rc.d xvfb defaults

RUN sed -i '/-e git.*/c\-e /opt/voxo-lib' /opt/voxo-daemon/requirements.txt

RUN cd /opt/voxo-daemon && \
    pip3 install -r requirements.txt


RUN locale-gen en_GB && \
    locale-gen en_GB.utf8 && \
    locale-gen en_US && \
    locale-gen en_US.utf8

RUN sed -i '/ROOTDIR=.*/c\ROOTDIR=/opt/voxo-daemon/' /opt/voxo-daemon/decode_daemon_start.sh


RUN sed -i '/USER=asr.*/c\USER=root' /opt/voxo-daemon/decode_daemon_start.sh
RUN sed -i '/GROUP=asr.*/c\GROUP=root' /opt/voxo-daemon/decode_daemon_start.sh
