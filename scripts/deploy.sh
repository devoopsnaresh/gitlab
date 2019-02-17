#!/usr/bin/env bash

docker ps -a | grep penxiao_skeleton | awk '{print$1}' | xargs docker stop
docker ps -a | grep penxiao_skeleton | awk '{print$1}' | xargs docker rm
docker run -d -p 81:5000 --name penxiao_skeleton skeleton
docker ps -a | grep penxiao_skeleton | awk '{print$1}' | xargs docker stop