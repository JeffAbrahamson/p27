#!/bin/bash

echo; echo "==== packages-dev.sh ===="
export DEBIAN_FRONTEND=noninteractive

apt-get install -y		\
	emacs-bin-common	\
	emacs-nox		\
	jq			\
	rsync			\
	strace			\
