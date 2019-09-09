#!/bin/bash
set -euxo
docker build -t jasenpan1987/mulit-client ./client  
docker build -t jasenpan1987/mulit-nginx ./nginx  
docker build -t jasenpan1987/mulit-server ./server  
docker build -t jasenpan1987/mulit-worker ./worker  
      
  
# login to docker cli  
# $DOCKER_PASSWORD and DOCKER_ID will come from travis ci enviornment variables  
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin  
# push to docker hub  
docker push jasenpan1987/mulit-client  
docker push jasenpan1987/mulit-nginx  
docker push jasenpan1987/mulit-server  
docker push jasenpan1987/mulit-worker