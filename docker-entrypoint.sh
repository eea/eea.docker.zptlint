#!/bin/sh
set -e

if [ "$1" = "zptlint" ]; then
  find /code -regex ".*\.[c|z]*pt" exec zptlint {} \;
else
  exec "$@"
fi
