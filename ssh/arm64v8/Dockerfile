FROM snowdreamtecharm64v8/alpine:3.10

LABEL maintainer="snowdream <sn0wdr1am@icloud.com>"

COPY qemu-aarch64-static /usr/bin

ENV SSH_PASSWORD=root

RUN apk add --no-cache openssl ca-certificates openssh \ 
    && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
    && ssh-keygen -A \
    && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 22

COPY docker-entrypoint.sh /usr/local/bin/

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]