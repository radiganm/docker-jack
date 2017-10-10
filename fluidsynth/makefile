#!/usr/bin/make
## makefile
##
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: build clean run shell

name = radiganm/fluidsynth

build: 
	docker build -t $(name) .

clean: 
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}
	docker images -a --no-trunc | grep $(name) | awk '{print$$3}' | xargs -I{} docker rmi -f {}

run: 
	docker run -it                       \
	  --privileged                       \
	  --ipc=host                         \
	  --security-opt seccomp=unconfined  \
	  -v $(absroot)/data:/data           \
	  $(name) fluidsynth

shell: 
	docker run -it                       \
	  $(name) util shell

run-experiment: 
	docker run -it                       \
	  --ipc=host                         \
	  -v /dev/snd:/dev/snd               \
	  --security-opt seccomp=unconfined  \
	  --privileged                       \
	  -v $(absroot)/data:/data           \
	  $(name) fluidsynth


## *EOF*
