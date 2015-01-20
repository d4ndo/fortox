#/bin/bash

# add the following line in /etc/crontab
# 0 *	* * *	root    cd /home/myname/fortox && ./checkalive.sh myprofile

if pgrep ratox; then
	echo "ratox OK";
else 
	echo "restarting ratox";
	ratox "$1" &bg;
fi

exit 0;
