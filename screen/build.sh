#!/bin/sh

set -exu

uname -a
git -c http.sslVerify=false clone https://github.com/alexander-naumov/screen.git
cd screen/src
./autogen.sh
./configure CFLAGS="-Wall"
gmake
./screen -v
./screen --help
