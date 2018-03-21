#!/bin/bash

for f in /Volumes/Seagate/RNA/kiss/trimmed/*
	do
		[ -d $f ] && cd "$f" && echo Entering into $f
		for y in $(ls *.fastq.gz | sed 's/_L00[1234]_R1_001.fastq.gz//g' | sort -u)
		do
			# check functioning with this echo statement 
			echo ${y}
		done
	done

