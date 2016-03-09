if [ ! -d "voxo-daemon" ]; then
    git clone git@bitbucket.org:vjousse/voxo-daemon.git
else
    cd voxo-daemon
    git pull
    cd ..
fi


if [ ! -d "voxo-lib" ]; then
    git clone git@bitbucket.org:vjousse/voxo-lib.git
else
    cd voxo-lib
    git pull
    cd ..
fi

docker build -t voxolab/daemon .

