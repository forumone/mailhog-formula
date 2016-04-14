# Mailhog precompiled binary

https://github.com/mailhog/MailHog/releases/download/v0.2.0/MailHog_linux_amd64

download-mailhog-binary:
  file.managed:
    - name: /usr/local/bin/MailHog
    - user: root
    - mode: 755
    - source: https://github.com/mailhog/MailHog/releases/download/v0.2.0/MailHog_linux_amd64
    - source_hash: md5=3e6f167e5c398d0220dd001f0aad7a85
