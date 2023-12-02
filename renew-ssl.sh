#!/bin/bash

# NOTE run certbot/Let's Encrypt for the first time.
# sudo docker compose run --rm certbot certonly --email demo@gmail.com --agree-tos --no-eff-email --webroot --webroot-path /home/www/demo.com -d demo.com

sudo docker compose run --rm certbot renew

# run this script via crontab
#sudo crontab -e
#0 3 * * 1 cd /home/jason/site; bash -x reload-nginx.sh
