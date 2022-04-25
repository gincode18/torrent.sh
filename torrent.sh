#!/bin/sh

query=$(printf '%s' "$*" | tr ' ' '+' )
o="+"
n="%20"
result=$(echo $query | sed "s/$o/$n/g")
magnet=$(curl https://thepiratebay.party/search/$result/1/99/0 | grep -Po "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)

curl https://thepiratebay.party/search/$result/1/99/0 | grep -Po "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 5 > txt
cat txt
echo "enter the magnet no from 1-5"
read number
if [ $number -eq 1 ]
then
    torrent=$(cat txt | sed -n ' 1 p')
elif [ $number -eq 2 ] 
then
    torrent=$(cat txt | sed -n ' 2 p')
elif [ $number -eq 3 ] 
then
    torrent=$(cat txt | sed -n ' 3 p')
elif [ $number -eq 4 ] 
then
    torrent=$(cat txt | sed -n ' 4 p')
elif [ $number -eq 5 ] 
then
    torrent=$(cat txt | sed -n ' 5 p')
    
fi
webtorrent $torrent --mpv --playlist

