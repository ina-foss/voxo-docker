if [ ! -d "voxo-dashboard" ]; then
    git clone git@github.com:voxolab/voxo-dashboard.git
    cd voxo-dashboard
else
    cd voxo-dashboard
    git pull
    cd ..
fi


if [ ! -d "voxo-lib" ]; then
    git clone git@github.com:voxolab/voxo-lib.git
else
    cd voxo-lib
    git pull
    cd ..
fi

docker build -t voxolab/dashboard .
