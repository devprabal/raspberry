#!/bin/sh

## organized alphabetically by names

## ~/ dotfiles
cp ~/docker-compose.yml docker-compose.yml
cp ~/.bashrc .bashrc

## anchor
mkdir -p anchor-data
cp ~/anchor-data/compose.yml ./anchor-data/compose.yml

## dashy
mkdir -p dashy-data
cp ~/dashy-data/conf.yml ./dashy-data/conf.yml

## flatnotes
mkdir -p flatnotes
cp -r ~/flatnotes/notes/* ./flatnotes/notes/

## grimmory
## TODO: how to export / sync grimmory settings (configs)?
## TODO: how to get just the books list (not backup entire epub)?
# mkdir -p grimmory-data/books
# cp -r ~/grimmory-data/books/* ./grimmory-data/books/
# mkdir -p grimmory-data/bookdrop
# cp -r ~/grimmory-data/bookdrop/* ./grimmory-data/bookdrop/

## homeassistant
## TODO: need to check what to actually backup for HA, which yaml files
# mkdir -p homeassistant-data
# cp -r ~/homeassistant-data/* ./homeassistant-data/

## hermes agent
mkdir -p hermes-data
cp -r ~/hermes-data/compose.yml ./hermes-data/compose.yml
# cp -r ~/hermes-data/config.yaml ./hermes-data/config.yaml

## linkding
mkdir -p linkding-db
cp ~/linkding-db/db.sqlite3 ./linkding-db/db.sqlite3
cp ~/linkding-db/tasks.sqlite3 ./linkding-db/tasks.sqlite3
