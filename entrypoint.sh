#!/usr/bin/env sh

URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
if [ "$RECIPE" != "master" ]
then
  URL=https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/$RECIPE/hosts
fi

wget -q $URL -O - | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\"\n"}' > /tmp/adblock-unbound

if [ "$WITH_IPV6" = "true" ]
then
  wget -q $URL -O - | grep '^0\.0\.0\.0' | awk '{print "local-data: \""$2" AAAA ::\"\n"}' >> /tmp/adblock-unbound
fi

cat /tmp/adblock-unbound
rm /tmp/adblock-unbound
