if [ ! -d "kaldi" ]; then

    git clone git@bitbucket.org:vjousse/kaldi.git && \
    cd kaldi && \
    git checkout lium-fast-gst-plugin
else
    cd kaldi
    git checkout lium-fast-gst-plugin
    git pull
fi

cd ..

docker build -t voxolab/kaldi-lium .
