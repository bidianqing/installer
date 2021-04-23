### MySql

```
bash <(curl -s -L https://raw.githubusercontent.com/bidianqing/installer/main/mysql/mysql.sh)
```

```
mysql -uroot -p
```

```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
```

```
use mysql;
select Host,User from user;
update user set Host = '%' where User = 'roow';
```
