#!/bin/bash

# author:junjie.shen

date=$(date "+%y/%m/%d %H:%M:%S")
status=$(nmap -sT 172.16.116.117|grep 80|grep http|awk '{print $2}')

if [ $status == "open" ]
	then
		echo "$date :nginx is running" &>> /tmp/study/checkNginx.log
	else
		echo "$date :nginx is not running" &>> /tmp/study/checkNginx.log
		nginx restart &> /dev/null
		echo "$date :restart nginx at port 80" &>> /tmp/study/checkNginx.log
fi
