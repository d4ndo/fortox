#!/bin/bash

regd="(^\s*![Dd]ice|![dD])";
arg="(([0-9]{1}x)*[0-9]{1,2}[dD]{1}[0-9]{1,3})";

while true; do
	inotifywait "$1/text_out";
	cmd=$(tail -n 1 "$1/text_out");

	if egrep -q "$regd" <<< "$cmd"; then
		a=$(egrep -o "$arg" <<< "$cmd");
		rolldice -s "$a" > "$1/text_in";
	fi
done

exit 0;
