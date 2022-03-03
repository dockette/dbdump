<h1 align=center>Dockette / DBDUMP</h1>

<p align=center>
   Ready-to-use MariaDB / MySQL / PostgreSQL dumpers.
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
    <a href="https://hub.docker.com/r/dockette/php/"><img src="https://img.shields.io/docker/stars/dockette/php.svg?style=flat-square"></a>
    <a href="https://hub.docker.com/r/dockette/php/"><img src="https://img.shields.io/docker/pulls/dockette/php.svg?style=flat-square"></a>
    <a href="https://bit.ly/ctteg"><img src="https://img.shields.io/gitter/room/contributte/contributte.svg?style=flat-square"></a>
    <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-me-brightgreen?style=flat-square"></a>
</p>

-----

## Usage

```
docker run \
    -it \
    --rm \
    -v /data/yourdb:/var/lib/mysql \
    dockette/dbdump:mariadb-10-4 \
    mysqldump -u root --password=root yourdb > dump.sql
```

## Development

See [how to contribute](https://contributte.org/contributing.html) to this package.

This package is currently maintaining by these authors.

<a href="https://github.com/f3l1x">
    <img width="80" height="80" src="https://avatars2.githubusercontent.com/u/538058?v=3&s=80">
</a>

-----

Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Also thank you for using this package.
