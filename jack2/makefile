#!/usr/bin/make
## makefile
##
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: build clean run shell

name = radiganm/jack

build: 
	docker build -t $(name) .

clean: 
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}
	docker images -a --no-trunc | grep $(name) | awk '{print$$3}' | xargs -I{} docker rmi -f {}


run: 
	xhost +local:docker
	docker run -it                       \
	  --ipc=host                         \
	  --net=host                         \
	  -e DISPLAY=${DISPLAY}              \
	  -v /tmp/.X11-unix:/tmp.X11-unix    \
	  -v /dev/snd:/dev/snd               \
	  --security-opt seccomp=unconfined  \
	  --privileged                       \
	  $(name) jack

shell: 
	xhost +local:docker
	docker run -it                       \
	  -e DISPLAY=${DISPLAY}              \
	  -v /tmp/.X11-unix:/tmp.X11-unix    \
	  -v /dev/snd:/dev/snd               \
	  $(name) util shell

## *EOF*
