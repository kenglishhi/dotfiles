#!/bin/bash

find  /home/kenglish/Music -type d | while read DIR; do

  if [[ "$DIR" =~ \([0-9]{4}\)$ ]]; then
    NEW_DIR=`echo $DIR | sed 's/(\([0-9][0-9][0-9][0-9]\))$/[\1]/'`
    echo "$DIR    -->    $NEW_DIR" 
    ` mv "$DIR" "$NEW_DIR" `
  fi
done 
