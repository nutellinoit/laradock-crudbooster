#!/usr/bin/env bash

export VERSION="1.0"

cd build_workspace
make build
make push

cd ../build_application/
make build
make push

cd ../build_percona/
make build
make push

cd ../build_php-fpm/
make build
make push

cd ../build_redis/
make build
make push

cd ../build_nginx/
make build
make push




echo "All built"


