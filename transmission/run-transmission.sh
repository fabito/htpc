#!/bin/sh
set -e
#SETTINGS=/etc/transmission-daemon/settings.json

#if [[ ! -f ${SETTINGS}.bak ]]; then
#    if [ -z $PASSWORD ]; then
#        echo Please provide a password for the 'transmission' user via the PASSWORD enviroment variable.
#        exit 1
#    fi
#    sed -i.bak -e "s/#rpc-password#/$PASSWORD/" $SETTINGS
#    sed -i.bak -e "s/#rpc-username#/$USERNAME/" $SETTINGS
#fi

#unset PASSWORD USERNAME

#[[ "${TZ:-""}" ]] && timezone "$TZ"
#[[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o debian-transmission
#[[ "${GROUPID:-""}" =~ ^[0-9]+$ ]]&& groupmod -g $GROUPID -o debian-transmission


exec su -l transmission -s /bin/bash -c "exec /usr/bin/transmission-daemon --foreground"

#               --config-dir $dir/info --blocklist --encryption-preferred \
#                --auth --dht --foreground --log-error -e /dev/stdout \
#                --download-dir $dir/downloads --incomplete-dir $dir/incomplete \
#                --username '${TRUSER:-admin}' --password '${TRPASSWD:-admin}' \
#                --no-portmap --allowed \\* 2>&1"

#exec /usr/bin/transmission-daemon --foreground --config-dir /etc/transmission-daemon