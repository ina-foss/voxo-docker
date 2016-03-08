if [ ! -d "voxo-fast" ]; then
    git clone git@bitbucket.org:vjousse/voxo-fast.git
else
    cd voxo-fast
    git pull
    cd ..
fi
docker build -t voxolab/voxo-fast .
