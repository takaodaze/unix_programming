#! /bin/sh

echo "Is it morning? Please answer yes or no"
read timeofday

if [ "$timeofday" = 'yes' ]; then
  echo "Good morning"
elif [ "$timeofdsy" = "no" ]; then
  echo "Good afternoon"
else
  echo "Sorry, $timeofday not recognized. Enter yes or no"
fi

exit 0

