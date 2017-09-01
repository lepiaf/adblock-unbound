#!/usr/bin/env sh

URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
if [ "$RECIPE" != "master" ]
then
  URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/$RECIPE/hosts
fi

wget -q $URL -O - | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}'
