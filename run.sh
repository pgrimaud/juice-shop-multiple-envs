#!/bin/sh

if [ -n "$1" ]
then
  ITERATOR=$1
else
  ITERATOR=1
fi

buildComposeYaml() {
  cat <<HEADER
version: '3.8'
services:
HEADER
  for i in $(seq ${ITERATOR}); do
    cat <<BLOCK
  juice-shop-$i:
    image: bkimminich/juice-shop
    ports:
      - "300$i:3000"
BLOCK
  done
}

buildComposeYaml | docker-compose -f - stop
buildComposeYaml | docker-compose -f - up -d --remove-orphans
