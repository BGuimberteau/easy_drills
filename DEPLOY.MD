# Deploy MARTEN app

## RESOURCES :

- https://docs.digitalocean.com/tutorials/recommended-droplet-setup/
- https://coderrocketfuel.com/article/how-to-set-up-nginx-on-a-ubuntu-server-with-vultr
- https://thilinatlm.medium.com/quick-web-deployments-using-git-bare-repositories-2e6e1ceaa06e
- https://daveceddia.com/deploy-git-repo-to-server/
- https://martenframework.com/docs/deployment/how-to/deploy-to-an-ubuntu-server

## STEPS

- VULTR instance Cloud Compute Intel High performance UBUNTU 6$ / month
- sudo ufw allow 'Nginx HTTP'
- git init --bare /home/igneb/easy_drills.git
- igneb@217.69.8.156:/home/igneb/easy_drills.git
- project empty
- ```bash
#!/bin/sh

FILE_DIR=/srv/easy_drills/project
BARE_DIR=/home/igneb/easy_drills.git

git --work-tree=$FILE_DIR --git-dir=$BARE_DIR checkout -f deploy

cd $FILE_DIR

shards install
crystal build src/server.cr -o bin/server --release
crystal build manage.cr -o bin/manage --release
bin/manage collectassets --no-input
bin/manage migrate
sudo /usr/sbin/service easy_drills restart
```
