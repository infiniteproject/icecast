#!/bin/sh

env
set -x

if [ -n "$ICECAST_SOURCE_PASSWORD" ]; then
    sed -i "s/<source-password>[^<]*<\/source-password>/<source-password>$ICECAST_SOURCE_PASSWORD<\/source-password>/g" /etc/icecast2/icecast.xml
fi
if [ -n "$ICECAST_RELAY_PASSWORD" ]; then
    sed -i "s/<relay-password>[^<]*<\/relay-password>/<relay-password>$ICECAST_RELAY_PASSWORD<\/relay-password>/g" /etc/icecast2/icecast.xml
fi
if [ -n "$ICECAST_ADMIN_PASSWORD" ]; then
    sed -i "s/<admin-password>[^<]*<\/admin-password>/<admin-password>$ICECAST_ADMIN_PASSWORD<\/admin-password>/g" /etc/icecast2/icecast.xml
fi
if [ -n "$ICECAST_ADMIN" ]; then
    sed -i "s/<admin>[^<]*<\/admin>/<admin>$ICECAST_ADMIN<\/admin>/g" /etc/icecast2/icecast.xml
fi
if [ -n "$ICECAST_CLIENTS" ]; then
    sed -i "s/<clients>[^<]*<\/clients>/<clients>$ICECAST_CLIENTS<\/clients>/g" /etc/icecast2/icecast.xml
fi

echo '<chroot>0</chroot>
        <changeowner>
            <user>icecast2</user>
            <group>icecast</group>
        </changeowner>
    ' > replace
        
awk ‘/\<security/{f=1;print;while (getline < “replace”){print}}/\/security/{f=0}!f’ /etc/icecast2/icecast.xml

cat /etc/icecast2/icecast.xml
icecast2 -c /etc/icecast2/icecast.xml
