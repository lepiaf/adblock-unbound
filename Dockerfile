FROM alpine:latest

ENV RECIPE="master"

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
