#!/bin/sh
set -e

CMD="$1"

if [[ ${CMD:0:4} = "http" ]]; then
  GIT_SRC=$1
  CMD="zptlint"
fi

if [[ ${CMD:0:3} = "git" ]]; then
  GIT_SRC=$1
  CMD="zptlint"
fi

if [ ! -z "$GIT_SRC" ]; then
  cd /code
  git clone $GIT_SRC
fi

if [ "$CMD" = "zptlint" ]; then
  find /code -regex ".*\.[c|z]*pt" -exec zptlint {} \;
else
  exec "$@"
fi
