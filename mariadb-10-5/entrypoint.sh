#!/bin/bash
set -eo pipefail
set -x

/usr/local/bin/docker-entrypoint.sh mysqld 1>/srv/output.log 2>&1 &

wait-for-it localhost:3306 --timeout=30 --strict 1>/srv/output.log 2>&1

exec "$@"
