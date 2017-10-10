#!/usr/bin/make
## makefile
##
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: build clean

build: 
	$(MAKE) -C ./jack2
	$(MAKE) -C ./fluidsynth
	$(MAKE) -C ./timidity
	$(MAKE) -C ./firefox

clean: 
	$(MAKE) -C ./jack2 $@
	$(MAKE) -C ./fluidsynth $@
	$(MAKE) -C ./timidity $@
	$(MAKE) -C ./firefox $@

## *EOF*
