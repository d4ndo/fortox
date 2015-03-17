#!/bin/bash

./fortox.sh "$1" &bg;
./dicetox.sh "$1" &bg;
./helptox.sh "$1" &bg;
