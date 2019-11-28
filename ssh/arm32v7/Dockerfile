FROM snowdreamtecharm32v7/alpine:3.10

LABEL maintainer="snowdream <sn0wdr1am@icloud.com>"

COPY qemu-arm-static /usr/bin

ENV SSH_PASSWORD=root

RUN apk add --no-cache openssl ca-certificates openssh \ 
    && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
    && sed -i "s/Subsystem.*/Subsystem\tsftp\tinternal-sftp/g" /etc/ssh/sshd_config \ 
    && sed -i "s/#MaxAuthTries.*/MaxAuthTries 3/g" /etc/ssh/sshd_config \
    && sed -i "s/#ClientAliveInterval.*/ClientAliveInterval 900/g" /etc/ssh/sshd_config \
    && sed -i "s/#ClientAliveCountMax.*/ClientAliveCountMax 3/g" /etc/ssh/sshd_config \
    && sed -i "s/#SyslogFacility.*/SyslogFacility AUTH/g" /etc/ssh/sshd_config \
    && sed -i "s/#LogLevel.*/LogLevel INFO/g" /etc/ssh/sshd_config \
    && ssh-keygen -A \
    && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 22

COPY docker-entrypoint.sh /usr/local/bin/

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]
