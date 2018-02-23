# Mailhog precompiled binary

require-daemonize-mailhog:
  pkg.installed:
    - name: daemonize
    - require_in:
      - file: mailhog-init

download-mailhog-binary:
  file.managed:
    - name: /usr/local/bin/MailHog
    - user: root
    - mode: 755
    - source: https://s3.amazonaws.com/f1vagrant/MailHog_linux_amd64
    - source_hash: md5=3b758c81bfe2c9110911511daca1a7bc
    - unless: test -f /usr/local/bin/MailHog

mailhog-init:
  file.managed:
    - name: /etc/init.d/mailhog
    - user: root
    - mode: 755
    - source: salt://mailhog/files/mailhog-init

mailhog-service:
  service.running:
    - name: mailhog
    - enable: True
