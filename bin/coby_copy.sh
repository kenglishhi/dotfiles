#!/bin/bash

if [ !-d $1 ]; then
   echo "Source Directory does not exists"
   exit
fi

if [ !-d $2 ]; then
   echo "Target Directory does not exists"
   exit
fi

echo "arg1 = $1 arg2 = $2"

IFS=`echo -en "\n\b"`

for FILENAME in `find $1 -type f -iname "*mp3" -print | sort | sed 's/^\.\///'`
do
  DIR=`dirname $FILENAME`
  mkdir -p $2/$DIR
  echo $FILENAME
  cp $FILENAME "$2/$DIR"
done
