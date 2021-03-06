#!/bin/bash
a=$(date +%Y-%m-%d)
curl -v -u admin:admin123 --upload-file  /opt/tomcat/webapps/lavagna.war http://10.26.2.211:8081/repository/test/com/my/group/lavagna/$a/lavagna-$a.war

