#!/bin/sh
# bld.sh - pull files from the UM WIKI and re-host them here.

D=`pwd`
cd ../../ultramessaging.github.io.wiki
git fetch
git merge
cd $D
cp ../ultramessaging.github.io.wiki/* ./
