FROM alpine:latest

ENV RECIPE="master"
ENV WITH_IPV6="false"

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
