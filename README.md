# ssh

[![ssh](http://dockeri.co/image/snowdreamtech/ssh)](https://hub.docker.com/r/snowdreamtech/ssh)

Docker Image packaging for ssh.

(amd64, arm32v6, arm32v7, arm64v8, i386)

## Usage

```bash
docker run --name ssh -d -p 2048:22  snowdreamtech/ssh
```

Default Environment:

- SSH_PASSWORD=root

```bash
docker run --name ssh -d -p 2048:22 -e SSH_PASSWORD=root snowdreamtech/ssh
```

Export

- SSH_PASSWORD=root

```bash
docker run --name ssh -d -p 2048:22 -e SSH_PASSWORD=root -v /etc/ssh/sshd_config:/etc/ssh/sshd_config: -v /root/.ssh:/root/.ssh snowdreamtech/ssh
```

## Quick reference

- Where to file issues:

[https://github.com/snowdreamtech/ssh/issues](https://github.com/snowdreamtech/ssh/issues)

- Maintained by:

snowdream <sn0wdr1am@icloud.com>

- Supported architectures: ([more info](https://github.com/docker-library/official-images#architectures-other-than-amd64))

ssh:

[amd64](https://hub.docker.com/repository/docker/snowdreamtechamd64/ssh), [arm32v6](https://hub.docker.com/repository/docker/snowdreamtecharm32v6/ssh), [arm32v7](https://hub.docker.com/repository/docker/snowdreamtecharm32v7/ssh), [arm64v8](https://hub.docker.com/repository/docker/snowdreamtecharm64v8/ssh), [i386](https://hub.docker.com/repository/docker/snowdreamtechi386/ssh)

- Supported Tags:
  [ssh](https://cloud.docker.com/u/snowdreamtech/repository/docker/snowdreamtech/ssh/tags)

## License

Apache 2.0
