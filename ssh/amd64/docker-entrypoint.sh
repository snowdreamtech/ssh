#!/bin/sh
set -e

# change the password for root
echo "root:$SSH_PASSWORD" | chpasswd

# start sshd
nohup /usr/sbin/sshd -D > /dev/null 2>&1 &
# /usr/sbin/sshd -D

# wait
wait