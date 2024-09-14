#!/bin/bash
echo Script name: $0
echo $# arguments
if [ $# -ne 2 ]; then
	echo "need two parameters" 
	exit 1
fi

filesdir=$1
searchstr=$2
if [ ! -d $filesdir ]; then
	echo "The provided argument $filesdir not exist"
	exit 1
else
	countFile=$(find $filesdir -type f | wc -l)
	countLine=$(grep -r $searchstr $filesdir 2>/dev/null | wc -l)
	echo "The number of files are $countFile and the number of matching lines are $countLine"
	exit 0
fi

