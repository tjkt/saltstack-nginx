nginx:
  pkg.latest

www-user:
 user.present
 
www-group:
  group.present

/var/www/html:
  file.directory:
    - user: www-user
    - group: www-group
    - mode: 0444

/var/www/html/index.html:
  file.managed:
    - user: www-user
    - mode: 0444
    - group: root
    - contents:
      - Hello All!

nginx service restart:
  service.running:
    - name: nginx
    - enable: True
