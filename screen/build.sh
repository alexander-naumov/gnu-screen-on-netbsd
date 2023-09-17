#!/bin/sh

set -exu

uname -a
git -c http.sslVerify=false clone https://github.com/alexander-naumov/gnu-screen.git
cd gnu-screen/src
./autogen.sh

#gcc -v
#cc=gcc ./configure CFLAGS="-Wall"
#gmake
#./screen -v
#./screen -ls || echo $?
#gmake clean

clang -v
cc=clang ./configure CFLAGS="-Wall -DDEBUG"
gmake
./screen -v
./screen -ls || echo $?
./screen --help
