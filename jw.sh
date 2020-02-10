#!/usr/bin/env bash

if [ -z "${TAG}" ]; then
    echo "Please provide TAG env var and try again."
    exit 1
fi

git pull

./build.sh

docker build -t 192.168.6.110:5000/hypercloud-ori:${TAG} .
docker tag 192.168.6.110:5000/hypercloud-ori:${TAG} 192.168.6.110:5000/hypercloud-ori:latest
echo "192.168.6.110:5000/hypercloud-ori:${TAG} Created"