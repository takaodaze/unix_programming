#!/bin/bash

# first.sh
# This file looks through all the files in the current
# directory for this the string POSIX, and then prints those
# files to the starndard output.

for file in *
do
  if grep -q POSIX $file
  then
    more $file
  fi
done

exit 0

