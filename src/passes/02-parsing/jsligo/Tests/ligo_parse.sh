#!/bin/sh

#set -x

for f in $(ls *.jsligo); do
  printf "Parsing %s..." $f
  res=$(~/tmp/ligo/_build/default/src/passes/02-parsing/jsligo/ParserMain.exe -- $f > /dev/null)
  if test $? -eq 0
  then printf " Done.\n"
  else printf " FAILED.\n"
  fi
done
