#! /bin/sh

foo(){
  echo "Function foo is executing"
}

yes_or_no(){
  echo "Parameters are $*"
  while true
  do
    echo "Enter yes or no"
    read x
    case "$x" in
      y | yes ) return 0;;
      n | no ) return 1;;
      * ) echo "Answer yes or no"
    esac
  done
}

echo "script starting"
foo
echo "script ended"

if yes_or_no "

exit 0
