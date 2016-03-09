if [ ! -d "voxo-dashboard" ]; then
    git clone git@bitbucket.org:vjousse/voxo-dashboard.git
else
    cd voxo-dashboard
    git pull
    cd ..
fi
docker build -t voxolab/voxo-dashboard .
