#!/bin/bash
echo Run Script: $0
if [ $# -ne 2 ]; then
	echo "Error: Two argument are required: <writeFile> <writeStr>"
	exit 1
fi

writeFile=$1
writeStr=$2
filePath=$(dirname $writeFile)

mkdir -p $filePath
if [ ! -d $filePath ]; then #check exist path and create directories
	echo "Error: Can make the directory"
	exit 1
fi

echo $writeStr > $writeFile

if [ -f $writeFile ]; then
	echo "File is sucessfully created"
	exit 0
else
	echo "Error: File can not created"
	exit 1
fi
