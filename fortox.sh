#!/bin/bash

regf="(^\s*![Ff]ortune\s*$|^\s*![Ff]\s*$)";

while true; do
	inotifywait "$1/text_out";
	cmd=$(tail -n 1 "$1/text_out" | cut -b18-);

 	if egrep -q "$regf" <<< "$cmd"; then
		fortune > "$1/text_in";
	fi
done

exit 0;
