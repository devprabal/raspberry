#!/bin/sh

cp ~/docker-compose.yml docker-compose.yml
cp ~/.bashrc .bashrc


mkdir -p dashy-data
cp ~/dashy-data/conf.yml ./dashy-data/conf.yml
mkdir -p flatnotes
cp -r ~/flatnotes/notes ./flatnotes/notes
mkdir -p linkding-db
cp ~/linkding-db/db.sqlite3 ./linkding-db/db.sqlite3
cp ~/linkding-db/tasks.sqlite3 ./linkding-db/tasks.sqlite3
