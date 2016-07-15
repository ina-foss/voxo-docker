if [ ! -d "voxo-fast-opensource" ]; then
    git clone git@bitbucket.org:vjousse/voxo-fast-opensource.git
else
    cd voxo-fast-opensource
    git pull
    cd ..
fi
docker build -t voxolab/voxo-fast-opensource .
