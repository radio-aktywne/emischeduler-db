#!/bin/sh

docker-entrypoint.sh redis-server ./conf/redis.conf \
  --port "${EMISCHEDULER_DB_PORT:-32000}" \
  --requirepass "${EMISCHEDULER_DB_PASSWORD:-password}" \
  --dir ./redis-data
