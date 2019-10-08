#!/bin/bash

echo "md5rename v1.0.0: this script rename all files from current directory (recursively) to its 'md5sum'."
echo
echo "[#] Listing files..."
echo
find . -type f -exec bash -c 'echo "$1" "=>" "${1%*/*}/$(md5sum "$1" | sed "s/^\(\w*\)\s*\(.*\)/\1/").${1##*.}"' bash {} \;
echo 
read -p "[!] Are you sure? [y/n]: " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  echo "[#] Moving files..."
  echo
  find . -type f -exec bash -c 'mv -v "$1" "${1%*/*}/$(md5sum "$1" | sed "s/^\(\w*\)\s*\(.*\)/\1/").${1##*.}"' bash {} \;
  echo
fi
echo "Bye!"

