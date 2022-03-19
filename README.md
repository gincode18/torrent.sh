# torrent.sh
a bash srcipt for pirate bays

use torrent.sh a tool which search magnet links and stream it with webtorrent using pirate bays as a source



How does this work?
This is a shell script. It scape piratebays and get the magnet link. After this it use webtorrent to stream the video from magnet link. For scraping script use simple gnu utils like sed, awk, paste, cut.

Requirements
webtorrent - A tool to stream torrent. sudo npm install webtorrent -g

curl sudo apt install curl

Installation

give torrent.sh execute permissions.

$ sudo chmod +x torrent.sh

then 
./torrent.sh query


To uninstall, simply delete torrent.sh 
