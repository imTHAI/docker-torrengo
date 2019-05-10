# torrengo in a docker container
Torrengo torrent search engine under a alpine docker

This container will install torrengo from the git reprository, with all the needed libraries to be able to parse the trackers.

# How to:
1. Choose where u want the torrent file to be downloaded ( or you can choose to get a magnet link when available).
For example, for me it's in my Downloads folder (under Linux)

2. Then Create an alias ( adapt the volume parameter with the folder u have previously chosen):

`alias torrengo='docker run --rm -v ~/Downloads:/data imthai/torrengo'`

# Usage:
\# To download:
TODO

