#!/bin/bash
if [ "$USER" = "ubuntu" ]; then
    sudo pkill postgres
elif [ "$USER" = "patrickwang" ]; then
    pkill postgres
fi
