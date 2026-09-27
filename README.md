<h1 align=center>Dockette / DBDUMP</h1>

<p align=center>
   <a href="https://github.com/dockette/dbdump/actions"><img src="https://github.com/dockette/dbdump/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/dbdump"><img src="https://img.shields.io/docker/pulls/dockette/dbdump.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   Ready-to-use MariaDB / MySQL dumper.
</p>

-----

## Usage

```
docker run \
    -it \
    --rm \
    -v /data/yourdb:/var/lib/mysql \
    dockette/dbdump:mariadb-10-11 \
    mysqldump -u root --password=docker yourdb > dump.sql
```

**Images**

- dockette/dbdump:mariadb-10-2
- dockette/dbdump:mariadb-10-4
- dockette/dbdump:mariadb-10-5
- dockette/dbdump:mariadb-10-6
- dockette/dbdump:mariadb-10-11
- dockette/dbdump:mariadb-11-1
- dockette/dbdump:mariadb-11-2
- dockette/dbdump:mariadb-11-4
- dockette/dbdump:mariadb-11-5
- dockette/dbdump:mariadb-11-7
- dockette/dbdump:mariadb-11-8
- dockette/dbdump:mariadb-12-3
- dockette/dbdump:mariadb-13-0

## Development

```sh
make build
make test
make run
make build-all
make test-all
make mariadb-11-8
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
