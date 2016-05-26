#!/usr/bin/env bash
OUTPUT_DIR=/opt/asr/docker/voxo-docker/voxo-daemon/output
CONF_FILE=/opt/asr/docker/voxo-docker/voxo-daemon/conf/daemon.conf
DOCKER_NAME=voxo-daemon-mono

nvidia-docker run -dti --name $DOCKER_NAME -v $OUTPUT_DIR:/mnt -v $CONF_FILE:/opt/voxo-daemon/daemon.conf -v /opt/asr/models/:/mnt/models -v /opt/asr/output:/mnt/output voxolab/daemon-mono /opt/voxo-daemon/decode_daemon_start.sh

#nvidia-docker run -ti --name $DOCKER_NAME -v $OUTPUT_DIR:/mnt -v $CONF_FILE:/opt/voxo-daemon/daemon.conf -v /opt/asr/models/:/mnt/models -v /opt/asr/output:/mnt/output -e "DOCKER_HOST=$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+'):8000" voxolab/daemon
#nvidia-docker run -ti --name $DOCKER_NAME -v $OUTPUT_DIR:/mnt -v $CONF_FILE:/opt/voxo-daemon/daemon.conf -v /opt/asr/models/:/mnt/models -v /opt/asr/output:/mnt/output -e "DOCKER_HOST=$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+'):8000" voxolab/daemon /opt/voxo-daemon/decode_daemon.py -n
