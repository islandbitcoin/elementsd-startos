FROM blockstream/elementsd:latest

RUN apk update
RUN apk add --no-cache tini jq yq && \
    rm -f /var/cache/apk/*

ARG ARCH
ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
