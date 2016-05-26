if [ ! -d "voxo-dashboard" ]; then
    git clone git@bitbucket.org:vjousse/voxo-dashboard.git
    cd voxo-dashboard
    git checkout multi-model
else
    cd voxo-dashboard
    git checkout multi-model
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

docker build -t voxolab/dashboard .

docker save voxolab/dashboard > /opt/asr/docker/images/voxo-dashboard.docker
