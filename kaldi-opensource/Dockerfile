FROM nvidia/cuda:devel-ubuntu14.04
MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y \
    make \
    gcc \
    subversion \
    automake \
    g++ \
    libtool \
    git \
    libatlas-base-dev \
    liblapack-pic \
    libavcodec54 \
    libavdevice53 \
    libavformat54 \
    libavutil52 \
    libpostproc52 \
    libswscale2 \
    libglpk-dev \
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
    libbz2-dev \
    wget

RUN cd /opt && \
    git clone https://github.com/kaldi-asr/kaldi && \
    cd /opt/kaldi/tools && \
    make -j 8 && \
    ./install_portaudio.sh

RUN cd /opt/kaldi/src && ./configure && \
    make -j 8 depend && make -j 8

RUN cd /opt/kaldi && find . -name "*.cc" -delete && \
    find . -name "*.o" -delete
