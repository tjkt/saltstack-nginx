salt-minion:
  pkg.latest

/etc/salt/minion.d:
  file.recurse:
    - source: salt://salt/files/etc/salt/minion.d
    - user: root
    - group: root
    - file_mode: 0644

salt-minion service:
  service.dead:
    - name: salt-minion
    - enable: False # no need to enable for local usage
