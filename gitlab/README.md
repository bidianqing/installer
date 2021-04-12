# GitLab

```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/gitlab/gitlab.sh)
```

## 修改/etc/gitlab/gitlab.rb
```
nginx['redirect_http_to_https'] = true
external_url "https://gitlab.example.com"
letsencrypt['enable'] = false
```

## 准备证书
```
sudo mkdir -p /etc/gitlab/ssl
sudo chmod 755 /etc/gitlab/ssl
拷贝证书 gitlab.example.com.crt  gitlab.example.com.key
```

## 启动gitlab
```
sudo gitlab-ctl reconfigure
sudo gitlab-ctl start
```

> 所有依赖的软件全部安装在/var/opt/gitlab/  nginx代理的是server unix:/var/opt/gitlab/gitlab-workhorse/socket

https://docs.gitlab.com/omnibus/settings/nginx.html
