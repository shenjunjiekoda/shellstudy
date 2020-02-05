#!/bin/bash
#批量解压缩后缀为.tar.gz的压缩包
#author:handsome koda

curdir=$(pwd)
cd $curdir
ls *.tar.gz &> ls.log
for i in $(cat ls.log)
        do
                tar -zxf i &> /dev/null
        done
rm -rf $date/ls.lg
