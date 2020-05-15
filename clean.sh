#!/bin/bash
#remove containers
docker rm $(docker ps -a -f status=exited -q)  > /dev/null 2>&1
#remove images
docker rmi $(docker images | grep '<none>' | awk '{ print $3 }') --force > /dev/null 2>&1
docker rm -f $(docker ps -a -q) > /dev/null 2>&1
docker volume rm $(docker volume ls -q) > /dev/null 2>&1
