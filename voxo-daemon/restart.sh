#!/usr/bin/env bash

docker stop voxo-daemon
docker rm voxo-daemon
./run.sh
