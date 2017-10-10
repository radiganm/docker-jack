## Dockerfile for fluidsynth
##
## Copyright 2016 Mac Radigan
## All Rights Reserved

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## install packages
  RUN apt-get update &&      \
      apt-get install -y     \
      fluidsynth              

  RUN mkdir -p /opt

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # fluidsynth entry point
  ADD ./ctl /usr/bin
  RUN chmod 775 /usr/bin/ctl
  ENTRYPOINT ["/usr/bin/ctl"]

## *EOF*
