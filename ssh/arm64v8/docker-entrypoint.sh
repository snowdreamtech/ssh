#!/bin/sh
set -e

# change the password for root
echo "root:$SSH_PASSWORD" | chpasswd > /dev/null 2>&1

# start sshd
nohup /usr/sbin/sshd -D > /dev/null 2>&1 &

# wait
wait