#!/bin/bash

reg="fortune";

while true; do
	inotifywait "$1/text_out";
	cmd=$(tail -n 1 "$1/text_out");

 	if grep -q "$reg" <<< "$cmd"; then
		fortune > "$1/text_in";
	fi
done
 
exit 0;
