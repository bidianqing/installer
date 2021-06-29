# GitLab

## 说明
安装脚本只是单纯的安装，并没有给出明确的external_url，而是安装完成以后再修改配置文件，这样的好处是可以手动配置自己的SSL证书。如果启用了https,在克隆代码时需要配置ssl证书  https://docs.gitlab.com/ee/administration/troubleshooting/ssl.html#unable-to-perform-git-operations-due-to-an-internal-or-self-signed-certificate

## 执行安装脚本
```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/gitlab/gitlab.sh)
```

## 修改/etc/gitlab/gitlab.rb
```
external_url "https://gitlab.example.com"
nginx['redirect_http_to_https'] = true
letsencrypt['enable'] = false
证书路径
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
