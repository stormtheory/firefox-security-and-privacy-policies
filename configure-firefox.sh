#!/usr/bin/bash
cd "$(dirname "$0")"

echo ' '

CONFIG_DIR=.

if [ -d /usr/lib/firefox/ ];then
        BANNER="  ### FIREFOX -Ubuntu- POLICY UPDATE ###"
        INSTALL_LOCATION=/usr/lib/firefox
elif [ -d /usr/lib64/firefox/ ];then
        BANNER="  ### FIREFOX -RHEL- POLICY UPDATE ###"
        INSTALL_LOCATION=/usr/lib64/firefox
else
        echo "ERROR: Firefox install not found..."
        exit
fi


if echo "$@"|egrep -q 'unbox|undo|unlock';then
        rm $INSTALL_LOCATION/mozilla.cfg
        rm $INSTALL_LOCATION/distribution/policies.json
        exit
fi

read -p 'Start firefox config? [y] $> ' ANS
if [ "$ANS" == y ];then
        echo "$BANNER"
        cp $CONFIG_DIR/Mozillacfg/local-settings.js $INSTALL_LOCATION/
        cp $CONFIG_DIR/Mozillacfg/mozilla.cfg $INSTALL_LOCATION/
        chmod 644 $INSTALL_LOCATION/mozilla.cfg
        cp $CONFIG_DIR/Mozillacfg/policies.json $INSTALL_LOCATION/distribution/policies.json
        chmod 644 $INSTALL_LOCATION/distribution/policies.json
        cp $CONFIG_DIR/Mozillacfg/autoconfig.js $INSTALL_LOCATION/defaults/pref/
        chmod 644 $INSTALL_LOCATION/defaults/pref/autoconfig.js
fi
