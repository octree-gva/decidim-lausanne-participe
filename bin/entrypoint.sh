#!/bin/bash
set -e
# Remove pid file if exists
PID_FILE=${RAILS_PID_FILE:-"tmp/pids/server.pid"}
if [ -f "$PID_FILE" ]; then
    echo "removing pid file $PID_FILE"
    rm -f "$PID_FILE"
fi

# Wait for postgres to be available for connections
$RAILS_ROOT/bin/wait-for-it.sh -h ${DATABASE_HOST:-db} -p ${DATABASE_PORT:-5432}

JOB_MODE="${RAILS_JOB_MODE:-default}"
if JOB_MODE='sidekiq'; then
    # Wait for redis to start
    $RAILS_ROOT/bin/wait-for-it.sh -h ${JOB_REDIS_HOST:-redis} -p ${JOB_REDIS_PORT:-7979}
fi
CACHE_MODE="${RAILS_CACHE_MODE:-default}"
if CACHE_MODE='redis'; then
    # Wait for redis to start
    $RAILS_ROOT/bin/wait-for-it.sh -h ${CACHE_REDIS_HOST:-redis} -p ${CACHE_REDIS_PORT:-7979}
fi

# Check gems, production ones should be set
bundle check

echo "Running '$@'"
# All looks great, can execute commands
exec "$@"