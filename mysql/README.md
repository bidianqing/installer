### MySql

```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/mysql/mysql.sh)
```

## 修改root用户的密码并允许远程连接
```
mysql -uroot -p
```

```
use mysql;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
```

```
select Host,User from user;
update user set Host = '%' where User = 'roow';
```
### 重启MySQL
```
systemctl restart mysqld
```
