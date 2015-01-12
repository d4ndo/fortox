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
How to install ratox: https://wiki.tox.im/Ratox

After installing ratox clone the repository:

```bash
sudo apt-get install fortune-mod inotify-tools
git clone https://github.com/d4ndo/fortox.git
```
#Usage:

Start the bot:

```bash
cd fortox
ratox && 
echo 1 > ./request/out/TOXID
./fortox.sh TOXID
```
connect to the bot by any TOX client and write "fortune".

```bash
#returns TOXID from fortox bot
cat id
```
