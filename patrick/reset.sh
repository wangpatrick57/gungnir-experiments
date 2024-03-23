#!/bin/bash
set -euxo pipefail
rm -rf ../optd/optd_perftest_workspace/
./patrick/kill_postgres.sh
./patrick/new_clean_postgres.sh
