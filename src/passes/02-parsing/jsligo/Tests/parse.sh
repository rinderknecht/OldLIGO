#!/bin/sh

#set -x

for f in $(ls *.ts); do
  printf "Parsing %s..." $f
  res=$(~/git/tree-sitter-typescript/node_modules/.bin/tree-sitter parse $f > /dev/null)
  if test $? -eq 0
  then printf " Done.\n"
  else printf " FAILED.\n"
  fi
done
