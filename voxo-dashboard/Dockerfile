FROM ubuntu:14.04
MAINTAINER Vincent Jousse <vincent@jousse.org>

ADD voxo-dashboard /opt/voxo-dashboard
ADD voxo-lib /opt/voxo-lib

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    git-core \
    build-essential \
    libav-tools

RUN ln -s /usr/bin/avconv /usr/bin/ffmpeg

RUN sed -i '/-e git.*/c\-e /opt/voxo-lib' /opt/voxo-dashboard/requirements.txt

RUN cd /opt/voxo-dashboard && \
    pip3 install -r requirements.txt

RUN sed -i '/basedir =.*/c\basedir = "/mnt/"' /opt/voxo-dashboard/config.py
RUN sed -i '/PROJECT_DIR =.*/c\PROJECT_DIR = "/opt/voxo-dashboard"' /opt/voxo-dashboard/wsgi_prod.py
RUN sed -i '/activate_this.*/d' /opt/voxo-dashboard/wsgi_prod.py
RUN sed -i '/ROOTDIR=.*/c\ROOTDIR=/opt/voxo-dashboard/' /opt/voxo-dashboard/gunicorn_start.sh
RUN sed -i '/source .\/env\/bin\/activate.*/c\' /opt/voxo-dashboard/gunicorn_start.sh
RUN sed -ri 's/(.*).\/env\/bin\/gunicorn(.*)/\1\/usr\/local\/bin\/gunicorn\2/g' /opt/voxo-dashboard/gunicorn_start.sh

RUN sed -i '/USER=asr.*/c\USER=root' /opt/voxo-dashboard/gunicorn_start.sh
RUN sed -i '/GROUP=asr.*/c\GROUP=root' /opt/voxo-dashboard/gunicorn_start.sh

RUN locale-gen en_GB && \
    locale-gen en_GB.utf8
