#!/bin/bash
# the basics
rm -rf ~/pgdata
cd ~/pgdata
initdb
cd -
pg_ctl start

# other
# default_user is used for cargo run --bin optd-perftest
psql -d postgres -c "CREATE USER default_user WITH SUPERUSER PASSWORD 'password';"
# test_user is used for cargo test --package optd-perftest
psql -d postgres -c "CREATE USER test_user WITH SUPERUSER PASSWORD 'password';"
psql -d postgres -f patrick/pgtune.sql
