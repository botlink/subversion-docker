#!/bin/sh
set -e

. /etc/apache2/envvars
rm -f ${APACHE_PID_FILE}

exec /usr/sbin/apache2 -DFOREGROUND "$@"
