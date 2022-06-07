#!/bin/sh
# file: download-release.sh


mkdir -p release

cd release

git clone https://github.com/ankicommunity/anki-sync-server

cd anki-sync-server
git pull origin main
git checkout main
cd ..

mv anki-sync-server/src/* .

rm -rf anki-sync-server

cd ..
