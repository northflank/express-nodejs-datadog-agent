#!/bin/bash

datadog-agent run &1> /var/log/agent.log &2> /var/log/agent.log &
/opt/datadog-agent/embedded/bin/trace-agent --config=/etc/datadog-agent/datadog.yaml &1> /var/log/trace-agent.log &2> /var/log/trace-agent.log &
/opt/datadog-agent/embedded/bin/process-agent --config=/etc/datadog-agent/datadog.yaml &1> /var/log/process-agent.log &2> /var/log/process-agent.log &
yarn start &1> /var/log/app.log &2> /var/log/app.log &

tail -f /var/log/agent.log &
tail -f /var/log/trace-agent.log &
tail -f /var/log/process-agent.log &
tail -f /var/log/app.log