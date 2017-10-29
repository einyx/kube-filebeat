#!/bin/bash

sleep 10
exec kube-gen -watch -type pods -wait 2s:10s -post-cmd '/app/kill-filebeat.sh' /app/filebeat.yml.tmpl /app/filebeat.yml > /dev/null
