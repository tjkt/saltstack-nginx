nginx:
  pkg.latest

www-data:
 user.present:
   - groups:
     - www-data
 
/var/www/html:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 0755

/var/www/html/index.html:
  file.managed:
    - user: www-user
    - mode: 0644
    - group: www-group
    - contents:
      - Hello All!

nginx service restart:
  service.running:
    - name: nginx
    - enable: True
