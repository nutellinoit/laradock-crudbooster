#!/usr/bin/env bash

chown -R laradock:root /var/www2/
mkdir /var/www
DIR="/var/www"
cd /var/www2/
# init
# look for empty dir
if [ "$(ls -A $DIR)" ]; then
    echo "Directory già piena, sync solo codice"
    rsync --exclude 'storage/*' --exclude '.env' -raz --progress /var/www2/ /var/www/
else
    rsync -raz --progress /var/www2/ /var/www/
fi

tail -F -n0 /etc/hosts
