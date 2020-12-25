#!/usr/bin/env sh
set -eu

envsubst '${TASKS_ADDRESS} ${USERS_ADDRESS}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"