#!/usr/bin/env bash
CONF_DIR=/opt/asr/docker/conf/dashboard
DOCKER_NAME=voxo-dashboard

docker run -dti --name $DOCKER_NAME -p 8000:8000 -v $CONF_DIR:/mnt voxolab/dashboard /opt/voxo-dashboard/gunicorn_start.sh
#docker run -t -i --name $DOCKER_NAME -p 8000:8000 -u asr -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK -v $CONF_DIR:/mnt -v $CONF_DIR/config.py:/home/asr/voxo-dashboard/config.py -v $CONF_DIR/wsgi_prod.py:/home/asr/voxo-dashboard/wsgi_prod.py voxolab/dashboard
