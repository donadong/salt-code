ssh:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/files/sshd_config

restart_ssh:
  service.running:
    - name: ssh
    - enable: boto_iot.topic_rule_absent:
      watch:
        - file: /etc/ssh/sshd_config