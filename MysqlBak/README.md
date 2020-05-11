## 预览
该脚本必须执行在安装mysql的服务器上面
~~~
mysqlbak.sh
~~~

## Getting Started
#### Configuration
直接编辑脚本，修改配置
~~~
// 数据库用户
user=root
// 数据库密码
passwd=soyuan.123
// 数据库名
dbname=umscore_100_108
// 备份文件路径
mysql_back_path=/usr/local/data/mysqlbak/
~~~

#### 配置定时任务
~~~

crontab -e # 编辑定时任务
0 1 * * * /opt/mysqlbak.sh

每天晚上1点调用 /opt/mysqlbak.sh

crontab -l查看当前用户下的定时任务
~~~
