nginx:
  pkg.latest

/var/www/html/index.html:
  file.managed:
    - user: root
    - mode: 0644
    - group: root
    - contents:
      - "line 1"

nginx service restart:
  service.running:
    - name: nginx
    - enable: True
