#!/bin/bash

# zig - fuZzy Interactive Grep
# requires fzf (http://github.com/junegunn/fzf)

flags=
for arg in $@; do
  if [ -d $arg ] || [ -f $arg ]; then
    break;
  fi

  flags="$flags $arg"
done

echo $flags

# recursive=
# if [[ "$1" = "-r" ]]; then
#   recursive="-r"
#   shift
# fi

# # if the user didn't provide a path, default to all files in the current dir
# path=${@:-*}

# grep $recursive . ${@:-*} 2> /dev/null | fzf -m | cut -d: -f1
