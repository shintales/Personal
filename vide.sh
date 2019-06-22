#!/bin/bash

filename=$1
IFS='/' tokens=($filename)
echo ${tokens[*]}

COUNTER=0
for token in ${tokens[*]};
do
	echo $token
	let COUNTER=COUNTER+1 
done

let COUNTER=COUNTER-1
I=0
IFS=''
dirname=$PWD
echo $dirname
while [  $I -lt $COUNTER ]; do
	dirname="$dirname/${tokens[$I]}"
	let I=$I+1 
done

tmux \
	  new-session -s vimux -d "vim $filename ; read" \; \
	  attach -t vimux

echo $dirname
source cd $dirname
