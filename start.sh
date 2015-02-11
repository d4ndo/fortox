#!/bin/bash

ratox fortox &bg;
./fortox.sh "$1" &bg;
./dicetox.sh "$1" &bg;
./helptox.sh "$1" &bg;
