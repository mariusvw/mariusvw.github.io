#!/bin/bash

# Path definitions
devtools_parse_root() {
  local root
  if [ -f "$1" ]
  then
    root="$(cd "$(dirname "$1")"; pwd)"
  else
    root="$1"
  fi
  if [ -L "$root" ]
  then
    root="$(dirname "$root")/$(readlink "$root")"
    devtools_root "$root"
    return
  fi
  echo "$root"
}
devtools_root() {
  [[ $0 != $BASH_SOURCE ]] && devtools_parse_root "${BASH_SOURCE[0]}" || devtools_parse_root "$0"
}
root="$(devtools_root \"$@\")"
cwd=$(pwd)

# Be sure we run from root directory
cd $root

# Build pages
pages=($(find $root/src/pages -maxdepth 1 -mindepth 1 -type f -name '*.sh' | awk -F'/' '{print $NF}' | sed 's/\.sh$//'))
for page in "${pages[@]}"
do
  . $root/src/main.sh > $root/$page.html
done
