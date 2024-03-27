FROM quay.io/jitesoft/alpine:3.19.1

RUN apk --no-cache add --update pdns-recursor
RUN rm -rf /var/cache/apk/*

USER recursor

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
