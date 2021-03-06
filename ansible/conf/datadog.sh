#!/bin/bash
cd /etc/datadog-agent/conf.d/tomcat.d/
cp conf.yaml.example conf.yaml
datadog-agent configcheck
systemctl restart datadog-agent
#systemctl status datadog-agent
