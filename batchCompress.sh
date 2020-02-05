#!/bin/bash
# 批量加压缩后缀为tar.gz的压缩包到当前目录
# author:handsome koda

curdir=$(pwd)
cd $curdir
ls *.tar.gz &> ls.log
for i in $(cat ls.log)
	do
		tar -zxf i &> /dev/null	
	done
rm -rf $date/ls.lg
