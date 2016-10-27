#!/usr/bin/env bash

# Sets the web proxy in Nexus if the env var HTTP_PROXY is set
${DIR}/nexusscript-create.sh /opt/sonatype/nexus/etc/set-http-proxy.json
${DIR}/nexusscript-run.sh set-http-proxy $HTTP_PROXY

