#!/bin/bash

# sudo docker compose run --rm certbot certonly --email demo@gmail.com --agree-tos --no-eff-email --webroot --webroot-path /home/www/hz.fenj.vip -d hz.fenj.vip

sudo docker compose run --rm certbot renew

