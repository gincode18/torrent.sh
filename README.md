### How does this work?

This is a shell script. It scape pirate bays and get the magnet link.
After this it use [webtorrent](https://github.com/webtorrent/webtorrent) to stream the video from magnet link.
For scraping script use simple gnu utils like sed, awk, paste, cut.

## Requirements

* [webtorrent](https://github.com/webtorrent/webtorrent) - A tool to stream torrent. `sudo npm install webtorrent -g`

## Installation

### git
git clone torrent.sh your system and give execute permissions.

```sh
$ git clone https://github.com/gincode18/torrent.sh
$ cd torrent.sh
$ sudo chmod +x torrent.sh
```
