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

icedtea-plugin: 
  pkg:
    - installed 

flashplugin-nonfree:
  pkg: 
    - installed 

smplayer: 
  pkg: 
    - installed 

nautilis-image-converter: 
  pkg: 
    - installed 

system-config-printer: 
  pkg: 
    - installed 

openprinting-ppds: 
  pkg: 
    - installed 

foomatic-db-compressed-ppds: 
  pkg: 
    - installed
