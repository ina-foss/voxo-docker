FROM nvidia/cuda:devel-ubuntu14.04
MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y \
    htop \
    make \
    gcc \
    subversion \
    automake \
    g++ \
    libtool \
    libatlas-base-dev \
    liblapack-pic \
    tig \
    git \
    python3-pip \
    libavcodec54 \
    libavdevice53 \
    libavformat54 \
    libavutil52 \
    libpostproc52 \
    libswscale2 \
    libglpk-dev \
    sox \
    openjdk-7-jre \
    supervisor \
    sqlite3 \
    libblas3gf \
    libblas-doc \
    libblas-dev \
    liblapack3gf \
    liblapack-doc \
    liblapack-dev \
    libglib2.0-dev \
    libgstreamer1.0-dev \
    glpk-utils \
    libssl-dev \
    libsqlite3-dev \
    libbz2-dev \
    wget \
    libav-tools

ADD kaldi /opt/kaldi

RUN cd /opt && \
    cd /opt/kaldi/tools && \
    make -j 8 && \
    ./install_portaudio.sh

RUN cd /opt/kaldi/src && ./configure --shared && \
    make -j 8 depend && make -j 8 && \
    cd /opt/kaldi/src/online && make -j 8 depend && make -j 8 && \
    cd /opt/kaldi/src/gst-plugin && make -j 8 depend && make -j 8 && \
    cd /opt 
