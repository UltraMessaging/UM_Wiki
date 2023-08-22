#!/bin/sh
# bld.sh

D=`pwd`
cd ../ultramessaging.github.io.wiki
git fetch
git merge
cd $D
cp ../ultramessaging.github.io.wiki/* wiki/
