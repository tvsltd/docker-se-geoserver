#!/usr/bin/env bash

echo "JAVA_OPTS=$JAVA_OPTS"

cd /opt/geoserver/templates
for f in $(find ./ -regex '.*\.xml'); do envsubst < $f > "/opt/geoserver/data_dir/$f"; done

$CATALINA_HOME/bin/catalina.sh run