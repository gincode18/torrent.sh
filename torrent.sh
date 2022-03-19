#!/bin/sh

query=$(printf '%s' "$*" | tr ' ' '+' )
o="+"
n="%20"
result=$(echo $query | sed "s/$o/$n/g")
magnet=$(curl https://thepiratebay.party/search/$result/1/99/0 | grep -Po "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)

webtorrent $magnet --mpv --playlist


