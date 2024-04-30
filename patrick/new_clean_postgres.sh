#!/bin/bash
if [ "$USER" = "ubuntu" ]; then
    # the basics
    sudo rm -rf /var/lib/postgresql/16/main
    sudo -u postgres /usr/lib/postgresql/16/bin/initdb -D /var/lib/postgresql/16/main
    sudo systemctl start postgresql

    # create users
    # default_user is used for cargo run --bin optd-perftest
    sudo -u postgres psql -d postgres -c "CREATE USER default_user WITH SUPERUSER PASSWORD 'password';"
    # test_user is used for cargo test --package optd-perftest
    sudo -u postgres psql -d postgres -c "CREATE USER test_user WITH SUPERUSER PASSWORD 'password';"

    # apply pgtune
    sudo -u postgres psql -d postgres -f patrick/adb_pgtune.sql
    # MAKE SURE to restart postgres after applying pgtune
    sudo systemctl restart postgresql
elif [ "$USER" = "patrickwang" ]; then
    # the basics
    rm -rf ~/pgdata
    cd ~/pgdata
    initdb
    cd -
    pg_ctl start -D ~/pgdata

    # create users
    # default_user is used for cargo run --bin optd-perftest
    psql -d postgres -c "CREATE USER default_user WITH SUPERUSER PASSWORD 'password';"
    # test_user is used for cargo test --package optd-perftest
    psql -d postgres -c "CREATE USER test_user WITH SUPERUSER PASSWORD 'password';"

    # apply pgtune
    psql -d postgres -f patrick/m1_pgtune.sql
    # MAKE SURE to restart postgres after applying pgtune
    pg_ctl restart -D ~/pgdata
fi
