FROM voxolab/kaldi-gst-lium

MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y  \
    gstreamer1.0-plugins-good \
    gstreamer1.0-tools \
    gstreamer1.0-pulseaudio \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-ugly  \
    python2.7 \
    python-pip \
    python-yaml \
    python-simplejson \
    python-gi \
    python-dev \
    subversion \
    wget \
    zlib1g-dev && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    pip install ws4py==0.3.2 && \
    pip install tornado

COPY start.sh stop.sh /opt/
COPY vera.yam /opt/vera.yam

COPY kaldigstserver /opt/
