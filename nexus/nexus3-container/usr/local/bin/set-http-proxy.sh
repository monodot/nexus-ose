#!/usr/bin/env bash

printf "Detecting HTTP proxy for Nexus...\n\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$NEXUS_BASE_URL" ]
then
   export NEXUS_BASE_URL="http://localhost:8081"
fi

$

# Sets the web proxy in Nexus by parsing the env var HTTP_PROXY
${DIR}/nexusscript-create.sh /opt/sonatype/nexus/etc/set-http-proxy.json
${DIR}/nexusscript-run.sh set-http-proxy $HTTP_PROXY

