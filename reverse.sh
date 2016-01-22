#!/bin/bash

function reverse() {
arraylength=${#dirlist[@]}
newarr=()
#echo $arraylength
for ((i=(arraylength-1);i>=0;i--)); do
newarr+=${dirlist[$i]}
newarr+=" "
done

echo ${newarr[@]}
}

function main() {
echo path is $path

if [ -e $path ]; then
dirlist=( `ls $path` )

echo ${dirlist[@]}
reverse

else
	echo The directory you have specified does not exist.
fi
}
echo "starting..."
path="$1"
if [ ! -z "$path" ]; then
	main
	echo "done"
else
	echo "Error: Please pass a directory path as an argument to this script"
fi