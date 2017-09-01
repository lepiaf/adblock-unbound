# adblock-unbound
Script build host to block directly from unbound. It is based on work of [https://github.com/StevenBlack/hosts](https://github.com/StevenBlack/hosts)

Also inpired by this blog post : [https://deadc0de.re/articles/unbound-blocking-ads.html](https://deadc0de.re/articles/unbound-blocking-ads.html)

## How to use as standalone

Checkout the repository

```
git clone https://github.com/lepiaf/adblock-unbound.git
chmod +x entrypoint.sh
./entrypoint.sh > /etc/unbound/unbound.conf.d/ads.conf
```

then restart unbound

## How to use with docker

```bash
git clone https://github.com/lepiaf/adblock-unbound.git
docker build -t lepiaf/adblock-unbound . 
docker run --rm -e RECIPE=fakenews lepiaf/adblock-unbound  > /etc/unbound/conf.d/ads.conf
```

then restart unbound
