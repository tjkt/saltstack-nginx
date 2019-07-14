# saltstack-nginx
Simple saltstack code to setup nginx site

## Setup

Standalone salt-minion is needed to run states locally. Alternatively, you may setup salt master and apply states from there.

### Install salt-minion

Installing with bootstrap. https://github.com/saltstack/salt-bootstrap#bootstrapping-salt

`wget -O bootstrap-salt.sh https://bootstrap.saltstack.com`
`sudo sh bootstrap-salt.sh`

### Configure salt-minion

Edit local minion file `/etc/salt/minion.d/file_roots.conf`
```
file_roots:
  base:
    - /srv/salt/states
```

### Setup states from git repository

Clone git repository.
`sudo git clone https://github.com/tjkt/saltstack-nginx.git`

Make symbolic link to salt file_roots base folder.
`sudo ln -s saltstack-nginx/salt /srv/salt`

## Run local salt-states

Install and configure nginx state
`sudo salt-call local state.apply nginx`