#!/bin/bash

# add the following line in /etc/crontab
# 0 *	* * *	root    cd /home/myname/fortox && ./checkalive.sh myprofile

if pgrep ratox; then
	echo "ratox OK";
else 
	echo "restarting ratox";
	ratox "$1";
fi

if pgrep fortox; then
	echo "fortox OK";
else 
	echo "fortox restarting";
	#fortox "$2";
fi

exit 0;
