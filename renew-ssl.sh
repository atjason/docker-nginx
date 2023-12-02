#!/bin/bash

# sudo docker compose run --rm certbot certonly --email demo@gmail.com --agree-tos --no-eff-email --webroot --webroot-path /home/www/hz.fenj.vip -d hz.fenj.vip

sudo docker compose run --rm certbot renew

# run this script via crontab
#sudo crontab -e
#0 3 * * 1 cd /home/jason/site; bash -x reload-nginx.sh

