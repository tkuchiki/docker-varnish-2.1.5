# docker-varnish-2.1.5
Varnish 2.1.5 Docker files

[![Docker Pulls](https://img.shields.io/docker/pulls/tkuchiki/varnish215.svg?style=for-the-badge)](https://hub.docker.com/r/tkuchiki/varnish215/)

```shell
$ docker run -v $(pwd)/your.vcl:/path/to/your.vcl -t tkuchiki/varnish215 -C -f /path/to/your.vcl
```
