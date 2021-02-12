[<img src="https://hotio.dev/img/trackarr.png" alt="logo" height="130" width="130">](https://gitlab.com/cloudb0x/trackarr)

[![GitHub Source](https://img.shields.io/badge/github-source-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/hotio/trackarr)
[![GitHub Registry](https://img.shields.io/badge/github-registry-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/orgs/hotio/packages/container/package/trackarr)
[![Docker Pulls](https://img.shields.io/docker/pulls/hotio/trackarr?color=ffb64c&style=flat-square&label=pulls&logo=docker&logoColor=white&labelColor=757575)](https://hub.docker.com/r/hotio/trackarr)
[![Discord](https://img.shields.io/discord/610068305893523457?style=flat-square&color=ffb64c&label=discord&logo=discord&logoColor=white&labelColor=757575)](https://hotio.dev/discord)
[![Upstream](https://img.shields.io/badge/upstream-project-ffb64c?style=flat-square&labelColor=757575)](https://gitlab.com/cloudb0x/trackarr)
[![Website](https://img.shields.io/badge/website-hotio.dev-ffb64c?style=flat-square&labelColor=757575)](https://hotio.dev/containers/trackarr)

## Starting the container

CLI:

```shell
docker run --rm \
    --name trackarr \
    -p 7337:7337 \
    -e PUID=1000 \
    -e PGID=1000 \
    -e UMASK=002 \
    -e TZ="Etc/UTC" \
    -v /<host_folder_config>:/config \
    hotio/trackarr
```

Compose:

```yaml
version: "3.7"

services:
  trackarr:
    container_name: trackarr
    image: hotio/trackarr
    ports:
      - "7337:7337"
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=002
      - TZ=Etc/UTC
    volumes:
      - /<host_folder_config>:/config
```

## Tags

Go [here](https://hotio.dev/tags-overview/#hotiotrackarr) to see all available tags.
