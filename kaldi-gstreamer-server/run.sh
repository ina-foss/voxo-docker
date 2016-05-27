DOCKER_NAME=voxo-gst
#docker run -it -v /opt/asr/models:/mnt/models voxolab/kaldi-gstreamer-server-debug /bin/bash
nvidia-docker run -dit --name $DOCKER_NAME -p 8888:80 -v /opt/asr/models:/mnt/models voxolab/kaldi-gstreamer-server-debug /opt/start.sh /opt/vera.yam
