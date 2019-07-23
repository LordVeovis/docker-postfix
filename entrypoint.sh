#!/bin/sh

if [ -n "$TZ" ] && [ ! -f /etc/timezone ]; then
        apk add tzdata

        if [ -f "/usr/share/zoneinfo/$TZ" ]; then
                echo "Setting timezone $TZ"
                cp "/usr/share/zoneinfo/$TZ" /etc/localtime
                mkdir -p `dirname /etc/zoneinfo/$TZ`
                ln -s /etc/localtime "/etc/zoneinfo/$TZ"
                echo "$TZ" > /etc/timezone
        else
                echo "$TZ is not a valid timezone (like: Europe/Paris)"
        fi
        apk del tzdata
fi

echo Starting syslogd
#syslogd -ZO /proc/1/fd/1
#SYSLOGD_OPTS="-Z" syslogd -Z
syslogd

echo Starting postfix
exec "$@"