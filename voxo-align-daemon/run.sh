#!/usr/bin/env bash
CONF_FILE=/opt/asr/docker/voxo-docker/voxo-align-daemon/conf/daemon.conf
DOCKER_NAME=voxo-aligndaemon

docker run -ti --name $DOCKER_NAME -v $CONF_FILE:/opt/voxo-daemon/daemon.conf -v /opt/asr/models/:/mnt/models -v /opt/asr/output:/mnt/output -e "DOCKER_HOST=$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+'):8000" voxolab/daemon-align /opt/voxo-daemon/align_daemon_start.sh
