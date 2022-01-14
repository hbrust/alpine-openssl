FROM alpine

LABEL maintainer="info@labbifant.de"

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["openssl"]