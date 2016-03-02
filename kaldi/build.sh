git clone git@bitbucket.org:vjousse/kaldi.git && \
cd kaldi && \
git checkout lium-fast && \
cd .. && \
docker build -t voxolab/kaldi-lium .
