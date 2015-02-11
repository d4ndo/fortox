#!/bin/bash

regd="(^\s*![Hh]elp|^\s*![hH])";
fortune="([Ff]ortune|[Ff])";
dice="([Rr]oll|[Rr])";

while true; do
	inotifywait "$1/text_out";
	cmd=$(tail -n 1 "$1/text_out" | cut -b18-);

	if egrep -q "$regd" <<< "$cmd"; then
		if a=$(egrep -o "$fortune" <<< "$cmd"); then
			cat ./manual/fortune.txt > "$1/text_in";
		elif a=$(egrep -o "$dice" <<< "$cmd"); then
			cat ./manual/rolldice.txt > "$1/text_in";
		else
			cat ./manual/usage.txt > "$1/text_in";
		fi
	fi
done

exit 0;
