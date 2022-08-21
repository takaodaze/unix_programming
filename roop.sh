#! /bin/sh

for foo in bar fud 43
do
  echo $foo
done

foo=1
while [ "$foo" -le 20 ]
do
  echo "Here we go again"
  foo=$((foo+1))
done

exit 0
