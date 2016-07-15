FROM voxolab/kaldi-opensource

MAINTAINER Vincent Jousse <vincent@jousse.org>

RUN apt-get update && apt-get install -y \
    libav-tools \
    sox \
    openjdk-7-jre

ADD voxo-fast-opensource /opt/voxo-fast-opensource

ENV LD_LIBRARY_PATH /usr/local/cuda/lib64/stubs:$LD_LIBRARY_PATH

RUN ln -s /opt/kaldi/egs/swbd/s5b/utils /opt/voxo-fast-opensource/utils && \
    ln -s /opt/kaldi/egs/swbd/s5b/steps /opt/voxo-fast-opensource/steps && \
    ln -s /opt/kaldi/egs/swbd/s5b/local /opt/voxo-fast-opensource/local && \
    sed -i '/KALDI_ROOT=\/lium\/spk1\/jousse\/eumssi\/kaldi-opensource/c\KALDI_ROOT=/opt/kaldi' /opt/voxo-fast-opensource/path.sh && \
    sed -i '84,86 s/^/#/' /opt/kaldi/egs/swbd/s5b/utils/validate_data_dir.sh
