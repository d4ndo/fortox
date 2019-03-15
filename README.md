fortox cookie
=============

fortox cookie is a fortune telling chat bot.
It is a simple bash script using ratox to pipe the output from the unix command `fortune` to some TOXID.

#Getting started:

fortox requires:
* ratox,
* fortune,
* inotify-tools,
* and bash.

ratox is a client implementation of the tox protocol. It allows complete interaction through named pipes.
How to install ratox: https://git.2f30.org/ratox/log.html

After installing ratox clone the repository:

```bash
sudo apt-get install fortune-mod rolldice inotify-tools
git clone https://github.com/d4ndo/fortox.git
```
#Usage:

Start the bot:

```bash
cd fortox

# start ratox client first
ratox fortox
# start bash script
./start.sh TOXID
```
connect to the bot by any TOX client and type `!fortune` or `!f`.

Howto add fortox bot to your friendlist:

```bash
echo TOXID > ./request/in
```

Some other useful commands:

```bash
#allow request
echo 1 > ./request/out/TOXID

#returns TOXID from fortox bot
cat id

#change nickname to "fortune"
echo fortune > ./name/in
```

#Watchdog

A watchdog to check if ratox is still alive.

```bash
# Add the following line in /etc/crontab
0 *   * * *   root    cd /home/myname/fortox && ./checkalive.sh myprofile
```

