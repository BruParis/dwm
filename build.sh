#!/bin/sh

git stash
patch -p1 < patches/dwm-swallow-6.3.diff
patch -p1 < patches/dwm-alpha-20230401-348f655.diff

./patches/end_patch.sh

cp config.def.h config.h

make clean
make
