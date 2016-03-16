#!/usr/bin/env bash
OUTPUT_DIR=/opt/asr/docker/voxo-docker/voxo-daemon/output
CONF_FILE=/opt/asr/docker/voxo-docker/voxo-daemon/conf/daemon.conf
DOCKER_NAME=voxo-daemon

nvidia-docker run -ti --name $DOCKER_NAME -v $OUTPUT_DIR:/mnt -v $CONF_FILE:/opt/voxo-daemon/daemon.conf -v /opt/asr/models/:/mnt/models -v /opt/asr/output:/mnt/output -v /opt/asr/audio:/mnt/audio voxolab/daemon /opt/voxo-daemon/decode_daemon.py -n
#docker run -dti --name $DOCKER_NAME -v $OUTPUT_DIR:/mnt v $CONF_FILE:/opt/voxo-daemon/daemon.conf voxolab/daemon
#docker run -t -i --name $DOCKER_NAME -p 8000:8000 -u asr -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK -v $CONF_DIR:/mnt -v $CONF_DIR/config.py:/home/asr/voxo-dashboard/config.py -v $CONF_DIR/wsgi_prod.py:/home/asr/voxo-dashboard/wsgi_prod.py voxolab/dashboard
