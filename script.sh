#!/bin/bash

while [[ "$#" -gt 0 ]]; do case $1 in
  -n|--name) NAME="$2"; shift;;
  -d|--dry-run) DRY_RUN="--dry-run --debug";;
  *) echo "Aborting.. unknown parameter passed: $1"; exit 1;;
esac; shift; done

if [ -z ${NAME+x} ]; 
  then echo "Aborting.. name is not set"; exit 1;
fi

echo "Name = $NAME"
echo "Dry-run? $DRY_RUN"
