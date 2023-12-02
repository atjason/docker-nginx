This project is to run nginx via Docker, with ssl/Let's Encrypt.

# How to Use

- Clone this project.
- Use `./vhost.sh add your_domain.com` to add your site. 
  - Don't forget to configure the DNS, i.e.g, map your domain to ip of your server.
- Add site source to `./www/your_domain.com/public`.
- Update site config file if necessary: `./nginx/conf.d/your_domain.com.conf`.
- Start docker: `./start.sh`
- Reload nginx after modify site config file: `./reload-nginx.sh`.
- Update ssl every week: `./renew-ssl.sh` via `crontab`.

# Introduce this Project

The folders and files:

- `nginx`: nginx config file for your site.
- `www`: site source files for your side. Each domain has its sub folder. Logs in `www/log`.
- `ssl`: ssl config file, updated by Let's Encrypt.
- `vhost.sh`: used to add or delete site.
- `compose.yaml`: docker compose config file.
- `start.sh`: run `docker compose up` to start project.
- `reload-nginx.sh`: reload nginx after update site config file.
- `renew-ssl.sh`: renew ssl file using Let's Encrypt.
