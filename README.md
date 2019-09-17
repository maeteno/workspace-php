# PHP Swoole Workspaces

- PHP 7.2.22
- Swoole 4.4.5
- composer 1.8.6
- mariadb 
- redis 

## 启动mariadb服务

> 因为安全策略的问题，容器内的服务不能通过`127.0.0.1`访问数据库服务。需要通过`loclhost`的本地地址来访问。  

```
# 数据库默认用户root 密码 root
/etc/init.d/mysqld start 
```

可以通过一下命令创建数据库
```
mysql --user=root --password=root -e "CREATE DATABASE demo charset=utf8mb4;"
```

## 启动redis服务
```
redis-server /etc/redis.conf
```

