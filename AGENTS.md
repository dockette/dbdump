# AGENTS.md

## Project

Dockette DBDUMP builds `dockette/dbdump`, ready-to-use MariaDB/MySQL dump helper images. Each tag wraps an official `mariadb:<version>` image, installs `wait-for-it`, copies a version-local `entrypoint.sh`, and exposes dump/client binaries for backup workflows.

## Images

- Default image: `dockette/dbdump:mariadb-11-8` from build context `mariadb-11-8/`.
- Supported tags in `Makefile` and README: `mariadb-10-2`, `mariadb-10-4`, `mariadb-10-5`, `mariadb-10-6`, `mariadb-10-11`, `mariadb-11-1`, `mariadb-11-2`, `mariadb-11-4`, `mariadb-11-5`, `mariadb-11-7`, and `mariadb-11-8`.
- Each `mariadb-*` directory is its own Docker build context and should contain both `Dockerfile` and `entrypoint.sh`.
- GitHub Actions builds and tests every matrix item, then publishes each tag through the shared Dockette Docker workflow on `master` and the weekly schedule.

## Commands

- `make build` builds `${DOCKER_IMAGE}:${DOCKER_TAG}` from `${DOCKER_VERSION}/`.
- `make test` verifies `mysqldump --version`, `mariadb-dump --version`, and `mariadb --version` in the current tag.
- `make run` opens an interactive container for the current tag.
- `make build-all` and `make test-all` iterate over every `DOCKER_VERSIONS` entry.
- `make mariadb-11-8` builds and tests that specific version; equivalent version targets are generated for every listed tag.

## Testing Notes

- Run `make test DOCKER_VERSION=<tag> DOCKER_TAG=<tag>` after changing a version directory.
- Use `make -n build test run` to dry-run command wiring without requiring Docker.
- The workflow passes `DOCKER_VERSION=...` to `make test`; keep workflow edits aligned with Makefile variable names.

## Guidelines

- Keep version directories, `DOCKER_VERSIONS`, README image list, and `.github/workflows/docker.yml` matrices aligned when adding or removing MariaDB versions.
- Prefer `DOCKER_*` names for Docker-related Makefile variables.
- Place `.PHONY: <target>` directly above each Makefile target.
- Keep README badges and maintenance sections consistent with other Dockette image repos.
- Keep changes duplicated across version directories only when the runtime behavior must stay identical.
- Do not introduce unrelated formatting or structural changes.
