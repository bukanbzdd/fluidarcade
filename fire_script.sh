#!/usr/bin/env bash
set -e
REPO="bukanbzdd/fluidarcade"
LIB="malleable-crown.a"
URL="https://github.com/${REPO}/releases/download/cosmic-comet-bright-anchor/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
