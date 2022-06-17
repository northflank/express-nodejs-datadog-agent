#!/bin/bash

datadog-agent run &
/opt/datadog-agent/embedded/bin/trace-agent --cfgpath=/etc/datadog-agent/datadog.yaml &
/opt/datadog-agent/embedded/bin/process-agent --cfgpath=/etc/datadog-agent/datadog.yaml &
yarn start 
