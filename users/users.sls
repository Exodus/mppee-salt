base:
  pkgrepo.managed:
    - name: deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Debian_7.0/ /
    - dist: wheezy
    - file: /etc/apt/sources.list.d/owncloud.list
    - key_url: http://download.opensuse.org/repositories/isv:ownCloud:desktop/Debian_7.0/Release.key
    - require_in:
      - pkg: owncloud-client

/etc/apt/apt.conf.d/proxy:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://users/files/proxy

/etc/lsb-release:
  file.managed:
    - source: salt://users/files/lsb-release

/etc/apt/sources.list.d/owncloud.list:
  file.managed:
    - users: root
    - group: root
    - mode: 644
    - source: salt://users/files/owncloud.list

/etc/cups/printers.conf:
  file.managed:
    - users: root
    - group: root
    - mode: 644
    - source: salt://users/files/fisc/printers.conf

/etc/cups/ppd/X656de.ppd:
  file.managed:
    - users: root
    - group: root
    - mode: 644
    - source: salt://users/files/fisc/X656de.ppd

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

icedtea-plugin: 
  pkg:
    - installed 

flashplugin-nonfree:
  pkg: 
    - installed 

smplayer: 
  pkg: 
    - installed 

nautilus-image-converter: 
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

owncloud-client:
  pkg:
    - installed
