fortox cookie
=============

fortox cookie is a fortune telling chat bot.
It is a simple bash script using ratox to pipe the output from the unix command ´fortune´ to some TOXID.

#Usage:

connect to the bot by any TOX client and write "fortune".

#Getting started:

fortox requires:
* ratox
* fortune
* inotify-tools
* bash

ratox is a client implementation of the tox protocol. It allows complete interaction through named pipes.
How to install ratox: https://wiki.tox.im/Ratox

```bash
sudo apt-get install fortune-mod inotify-tools
git clone https://github.com/d4ndo/fortox.git
cd fortox
ratox && 
echo 1 > ./request/out/TOXID
./fortox.sh TOXID
```
