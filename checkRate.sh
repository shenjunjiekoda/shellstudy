#!/bin/bash

rate=$(df -h|grep "/dev/vda1"|awk '{printf $5}' |cut -d "%" -f 1)

if [ $rate -ge 80 ]
	then
		echo "dev/vda1 is greater than 80%"
fi
