#!/bin/bash

echo; echo "==== packages-runtime.sh ===="
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y    		\
	git 			\
	golang-1.23		\
	hugo			\
