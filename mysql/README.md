### MySql

```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/mysql/mysql.sh)
```

## 修改root用户的密码并允许远程连接
```
mysql -uroot -p
```

```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
```

```
use mysql;
select Host,User from user;
update user set Host = '%' where User = 'root';
```
### 重启MySQL
```
systemctl restart mysqld
```
