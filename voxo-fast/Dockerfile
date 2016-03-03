FROM voxolab/kaldi-lium

MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y \
    libav-tools

ADD voxo-fast /opt/voxo-fast

RUN ln -s /opt/kaldi/egs/swbd/s5b/utils /opt/voxo-fast/utils && \
    sed -i '/KALDI_ROOT=\/home\/vjousse\/asr\/src\/kaldi/c\KALDI_ROOT=/opt/kaldi' /opt/voxo-fast/path.sh && \
    sed -i '/KALDI_MODELS=\/home\/vjousse\/asr\/modeles/c\KALDI_MODELS=/mnt/models' /opt/voxo-fast/path.sh
