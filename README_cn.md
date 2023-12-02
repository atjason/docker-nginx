通过 `docker` 运行 `nginx`，使用 `Let's Encrypt` 更新 `https/ssl`。

# 如何使用

- 克隆本项目。
- 使用 `./vhost.sh add your_domain.com` 添加站点。 
  - 提前设置好域名的 DNS，指定当前服务器 IP
- 将站点文件添加至：`./www/your_domain.com/public`
- 更新站点配置文件：`./nginx/conf.d/your_domain.com.conf`
- 启动 docker：`./start.sh`
- 修改站点配置文件后，重载 nginx：`./reload-nginx.sh`
- 使用 `crontab` 定期更新 ssl：`./renew-ssl.sh`

# 介绍本项目

各文件夹及文件：

- `nginx`: nginx 配置文件
- `www`: 站点数据文件，每个域名一个子文件夹，日志位于 `www/log`
- `ssl`: ssl 配置文件，使用 Let's Encrypt 生成及更新
- `vhost.sh`: 添加、删除站点
- `compose.yaml`: docker compose 配置文件
- `start.sh`: 使用 `docker compose up` 启动
- `reload-nginx.sh`:  修改站点配置文件后，重载 nginx
- `renew-ssl.sh`: 使用 Let's Encrypt 更新 ssl
