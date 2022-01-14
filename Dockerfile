FROM alpine

LABEL maintainer="info@labbifant.de"

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

# copy extensions from CSRs at signing
RUN sed -i "s/# copy_extensions = copy/copy_extensions = copy/g" /etc/ssl1.1/openssl.cnf

ENTRYPOINT ["openssl"]