## Dockerfile for jack2
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## install packages
  RUN apt-get update &&      \
      apt-get install -y     \
      jack2                   

  RUN mkdir -p /opt

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # jack2 entry point
  ADD ./ctl /usr/bin
  RUN chmod 775 /usr/bin/ctl
  ENTRYPOINT ["/usr/bin/ctl"]

## *EOF*
