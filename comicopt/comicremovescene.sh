#!/bin/bash

if [ -z "$1" ]; then
        echo usage: compressimg [directory or file]
        echo This tool will aremove known scene release files from all cbz files
        exit
fi

# apply the compressimg script to every image file within the given directory
# if the input is a single file, execute the script on it
ORIGSIZE=`du -sb $1 | awk '{ print $1}'`

# execute removal, this is a stupidly brute force way to do this



# generate stats
NEWSIZE=`du -sb $1 | awk '{ print $1}'`
READABLESIZE=`du -sh $1 | awk '{ print $1}'`
((PERCENTCHANGE=100-(NEWSIZE*100/ORIGSIZE)))
echo Finished. $INPUTTYPE is now about $READABLESIZE total \($PERCENTCHANGE% drop\)