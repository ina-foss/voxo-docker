FROM voxolab/kaldi-lium

MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y \
    libav-tools \
    sox \
    openjdk-7-jre

ADD voxo-fast /opt/voxo-fast

ENV LD_LIBRARY_PATH /usr/local/cuda/lib64/stubs:$LD_LIBRARY_PATH

RUN ln -s /opt/kaldi/egs/swbd/s5b/utils /opt/voxo-fast/utils && \
    ln -s /opt/kaldi/egs/swbd/s5b/steps /opt/voxo-fast/steps && \
    ln -s /opt/kaldi/egs/swbd/s5b/local /opt/voxo-fast/local && \
    sed -i '/KALDI_ROOT=\/home\/vjousse\/asr\/src\/kaldi/c\KALDI_ROOT=/opt/kaldi' /opt/voxo-fast/path.sh && \
    sed -i '/KALDI_MODELS=\/home\/vjousse\/asr\/modeles/c\KALDI_MODELS=/mnt/models' /opt/voxo-fast/path.sh
