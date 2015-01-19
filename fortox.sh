#!/bin/bash

regf="(![Ff]ortune|![Ff])";

while true; do
	inotifywait "$1/text_out";
	cmd=$(tail -n 1 "$1/text_out");

 	if egrep -q "$regf" <<< "$cmd"; then
		fortune > "$1/text_in";
	fi
done
 
exit 0;
