# hammer-cli-docker

[![Docker Repository on Quay.io](https://quay.io/repository/pennstate/hammer-cli/status "Docker Repository on Quay.io")](https://quay.io/repository/pennstate/hammer-cli)

CentOS 7 image with hammer-cli and all of its plugins, including katello.

Useful for interacting with RedHat Satellite 6 on the command line.

## Usage

```
docker run --rm -it --user $(id -u):$(id -g) -v $HOME:/work quay.io/pennstate/hammer-cli bash
```
