#!/bin/sh

########文件名称为当天时间#############

time=`date '+%y-%m-%d %H:%M:%S'`

echo $time

echo '开始备份数据库..'

###################数据库配置信息#######################

user=root

passwd=soyuan.123

dbname=umscore_100_108

mysql_back_path=/usr/local/data/mysqlbak/

###################数据库配置信息#######################

/usr/bin/mysqldump -h127.0.0.1 -u$user -p$passwd $dbname > $mysql_back_path/$time.sql

echo '数据库备份完成'


# find /usr/local/data/mysqlbak/ -type f -mtime +7 -exec rm {} \; #删除7天以上的备份sql