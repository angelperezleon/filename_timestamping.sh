#!/bin/bash
# File: filename_timestamping.sh
# Usage: ./filename_timestamping.sh *.jpeg
# Credit: bls from irc.freenode.net ##linux
# Credit2: Primoz Anzur at Mobik 
# Version 1.1 - 31.08.2017

#for f in *.jpeg;do ts=$(echo $f | sed -r 's/([0-9]{8})_([0-9]{4})([0-9]{2}).jpeg/\1\2.\3/'); touch -t $ts "$f";done
# for f in *.jpeg;do ts=$(echo $f | sed -r 's/([a-z]{2})_([0-9]{8})_([0-9]{4})([0-9]{2}).jpeg/\1\2.\3/'); touch -t $ts "$f";done

#stripout from a filename that beging with 01_
#rename 's/^01_//' *.jpeg

#sample file format 20170830_230153 to be handled
#yyyy-mm-dd h-min-s
for f in *.jpeg; do 
	ts=$(echo $f | sed -r 's/([0-9]{8})_([0-9]{4})([0-9]{2}).jpeg/\1\2\3/'); 
	
	nts=$(echo $ts | sed -r 's#(.{4})(.{2})(.{2})(.{2})(.{2})(.{2})#\1-\2-\3 \4:\5:\6#')
	curr=$( date +%Y%m%d%H%M.%S -d "$nts 5minutes" )
	echo "Changing modification time for $f to $curr"
	touch -t $curr "$f";

done