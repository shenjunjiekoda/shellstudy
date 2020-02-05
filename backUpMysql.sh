#!/bin/bash

#author:handsome koda

#ntpdate asia.pool.ntp.org &> /dev/null
#同步系统时间

date=$(date +%y%m%d)
size=$(du -sh /var/lib/mysql)
#统计mysql数据库的大小

if [ -d /tmp/backup ]
	then
		echo "Date is :$date" > /tmp/backup/db.txt
		echo "Size is :$size" >> /tmp/backup/db.txt
		cd /tmp/backup
		tar -zcf mysql_$date.tar.gz /var/lib/mysql db.txt &>/dev/null
		rm -rf /tmp/backup/db.txt
	else
		mkdir /tmp/backup
		echo "Date is :$date" > /tmp/backup/db.txt 
                echo "Size is :$size" >> /tmp/backup/db.txt
                cd /tmp/backup
                tar -zcf mysql_$date.tar.gz /var/lib/mysql db.txt &>/dev/null
                rm -rf /tmp/backup/db.txt
fi
