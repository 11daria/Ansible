
for nginx
server:
  http_listen_port: 9081
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://10.26.0.144:3100/loki/api/v1/push

scrape_configs:
  - job_name: journal
    journal:
      max_age: 12h
      labels:
        job: systemd-journal
        host: nginx
    relabel_configs:
      - source_labels: ['__journal__systemd_unit']
        target_label: 'unit'

  - job_name: nginx
    entry_parser: raw
    static_configs:
    - targets:
        - 10.26.1.208
      labels:
        job: nginx
        __path__: /var/log/nginx/*log
 tomcat:wq!       
server:
  http_listen_port: 9081
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://10.26.0.144:3100/loki/api/v1/push

scrape_configs:
  - job_name: journal
    journal:
      max_age: 12h
      labels:
        job: systemd-journal
        host: tomcat2
    relabel_configs:
      - source_labels: ['__journal__systemd_unit']
        target_label: 'unit'

  - job_name: tomcat
    entry_parser: raw
    static_configs:
    - targets:
        - 10.26.1.217
      labels:
        job: sax-tomcat
        __path__: /opt/tomcat/logs/*log

-- VISUAL BLOCK --
