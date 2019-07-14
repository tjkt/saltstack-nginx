nginx:
  pkg.latest

/var/www/html/index.html:
  file.touch

nginx service restart:
  service.running:
    - name: nginx
    - enable: True
