#!/bin/bash
set -eo pipefail
set -x

docker-entrypoint.sh mariadbd 1>/srv/output.log 2>&1 &

wait-for-it localhost:3306 --timeout=30 --strict 1>/srv/output.log 2>&1

exec "$@"
