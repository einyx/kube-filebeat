#!/bin/bash
exec echo "Starting log collection..." && kube-gen -interval 5 -watch -type pods -wait 2s:4s -post-cmd '/app/kill-filebeat.sh' /app/filebeat.yml.tmpl /app/filebeat.yml > /dev/null
