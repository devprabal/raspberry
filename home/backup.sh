#!/bin/sh

## organized alphabetically by names

## ~/ dotfiles
cp ~/docker-compose.yml docker-compose.yml
cp ~/.bashrc .bashrc
cp ~/dstop.sh dstop.sh
cp ~/winston.sh winston.sh

## anchor
mkdir -p anchor-data
cp ~/anchor-data/compose.yml ./anchor-data/compose.yml

## audiobookshelf
mkdir -p audiobookshelf
cp ~/audiobookshelf/compose.yml ./audiobookshelf/compose.yml

## beszel
mkdir -p beszel-data
cp ~/beszel-data/compose.yml ./beszel-data/compose.yml

## bookorbit
mkdir -p bookorbit
cp ~/bookorbit/compose.yml ./bookorbit/compose.yml

## dashy
mkdir -p dashy-data
cp ~/dashy-data/conf.yml ./dashy-data/conf.yml

## dozzle
mkdir -p dozzle-data
cp ~/dozzle-data/compose.yml ./dozzle-data/compose.yml

## flatnotes
mkdir -p flatnotes
cp -r ~/flatnotes/notes/* ./flatnotes/notes/
cp -r ~/flatnotes/notes/attachments/* ./flatnotes/notes/attachments/

## frankmd
mkdir -p frankmd
cp ~/frankmd/compose.yml ./frankmd/compose.yml

## grimmory
## TODO: how to export / sync grimmory settings (configs)?
## TODO: how to get just the books list (not backup entire epub)?
# mkdir -p grimmory-data/books
# cp -r ~/grimmory-data/books/* ./grimmory-data/books/
# mkdir -p grimmory-data/bookdrop
# cp -r ~/grimmory-data/bookdrop/* ./grimmory-data/bookdrop/

## hermes agent
mkdir -p hermes-data
cp -r ~/hermes-data/compose.yml ./hermes-data/compose.yml
# cp -r ~/hermes-data/config.yaml ./hermes-data/config.yaml

## homeassistant
## TODO: need to check what to actually backup for HA, which yaml files
# mkdir -p homeassistant-data
# cp -r ~/homeassistant-data/* ./homeassistant-data/

## karakeep
mkdir -p karakeep-data
cp -r ~/karakeep-data/compose.yml ./karakeep-data/compose.yml

## linkding
mkdir -p linkding-db
cp ~/linkding-db/db.sqlite3 ./linkding-db/db.sqlite3
cp ~/linkding-db/tasks.sqlite3 ./linkding-db/tasks.sqlite3

## pi-hole
mkdir -p pi-hole-data
## claude says not to publicly backup the toml config file for pihole
#mkdir -p pi-hole-data/etc-pihole
cp ~/pi-hole-data/compose.yml ./pi-hole-data/compose.yml
#cp ~/pi-hole-data/etc-pihole/pihole.toml ./pi-hole-data/etc-pihole/pihole.toml

## readeck
mkdir -p readeck
cp ~/readeck/compose.yml ./readeck/compose.yml
