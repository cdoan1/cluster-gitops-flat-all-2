#!/bin/bash

mkdir -p flat
if [ ! -d flat ]; then
  exit 1
fi

list=`find . -type f -name "*.yaml"`
for i in $list
do
  echo $i
  echo $(dirname $i)
  echo $(basename $i)
  cp $i flat/$(dirname $i)-$(basename $i)
done
