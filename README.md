When
Whole
wget
weq
# Ansible
[Unit]
Description=Apache Tomcat
After=network.target

[Service]
Type=forking

User=tomcat9
Group=tomcat9

Environment=JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
Environment=CATALINA_PID=/opt/tomcat9/tomcat9.pid
Environment=CATALINA_HOME=/opt/tomcat9
Environment=CATALINA_BASE=/opt/tomcat9
Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

ExecStart=/opt/tomcat9/bin/startup.sh
ExecStop=/opt/tomcat9/bin/shutdown.sh

ExecReload=/bin/kill $MAINPID
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
https://devopscube.com/how-to-install-latest-sonatype-nexus-3-on-linux/
