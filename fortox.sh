#!/bin/bash

reg="fortune";

while true; do
	inotifywait $1/text_out;
	cmd=$(tail -n 1 $1/text_out);

	if (( `echo $cmd | grep -c $reg` > 0 ))	then
		echo $(fortune) > $1/text_in;
	fi
done
 
exit 0;
