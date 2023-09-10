#!/bin/sh

set -exu

uname -a
cc -v
git -c http.sslVerify=false clone https://github.com/alexander-naumov/gnu-screen.git
cd screen/src
./autogen.sh
./configure CFLAGS="-Wall -DDEBUG"
gmake
./screen -v
./screen --help
