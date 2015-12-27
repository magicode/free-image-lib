#!/usr/bin/env bash

cd $(dirname $0)

if [ ! -d "FreeImage" ]; then
  echo "download FreeImage"
  curl -L -o freeimage.zip  "http://downloads.sourceforge.net/project/freeimage/Source%20Distribution/3.17.0/FreeImage3170.zip" > /dev/null 2>&1
  unzip freeimage.zip 
  rm freeimage.zip
fi


if [ ! -d "FreeImage" ]; then
  echo false
  exit
fi

make -C  ./FreeImage

cp -r ./FreeImage/Dist/ ./dist-x64

