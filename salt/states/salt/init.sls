salt-minion:
  pkg.latest

/etc/salt/minion.d:
  file.recurse:
    - source: salt://salt/files/etc/salt/minion.d
    - user: root
    - group: root
    - mode: 0644