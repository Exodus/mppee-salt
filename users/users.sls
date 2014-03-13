/etc/apt/apt.conf.d/proxy:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://users/files/proxy

/etc/lsb-release:
  file.managed:
    - source: salt://users/files/lsb-release


salt-minion:
  service.running:
    - watch:
      - file: /etc/lsb-release
      - reload_modules: true

vim:
  pkg:
    - installed

less:
  pkg:
    - installed

ssh:
  pkg:
    - installed

p7zip-full:
  pkg:
    - installed

rsync:
  pkg:
    - installed
