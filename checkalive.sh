#/bin/bash

# add the following line in /etc/crontab
# 0 *	* * *	root    cd /home/myname/fortox && ./checkalive.sh myprofile

myprofile="$1";

if pgrep ratox; then
	echo "ratox OK";
else 
	echo "restarting ratox";
	ratox "$myprofile" &bg;
fi

exit 0;
