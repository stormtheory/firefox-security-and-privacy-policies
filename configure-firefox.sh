#!/usr/bin/bash
cd "$(dirname "$0")"

echo ' '

if echo "$@"|egrep -q 'unbox|undo|unlock';then
        rm /usr/lib/firefox/mozilla.cfg
        rm /usr/lib/firefox/distribution/policies.json
        exit
fi

read -p 'Start firefox config? [y] $> ' ANS
if [ "$ANS" == y ];then
        if [ -d /usr/lib/firefox/ ];then
                echo "  ### FIREFOX POLICY UPDATE ###"
                CONFIG_DIR=.
                cp $CONFIG_DIR/Mozillacfg/local-settings.js /usr/lib/firefox/
                cp $CONFIG_DIR/Mozillacfg/mozilla.cfg /usr/lib/firefox/
                cp $CONFIG_DIR/Mozillacfg/policies.json /usr/lib/firefox/distribution/policies.json
                chmod 644 /usr/lib/firefox/mozilla.cfg
                chmod 644 /usr/lib/firefox/distribution/policies.json
                cp $CONFIG_DIR/Mozillacfg/autoconfig.js /usr/lib/firefox/defaults/pref/
                chmod 644 /usr/lib/firefox/defaults/pref/autoconfig.js
        fi
fi
