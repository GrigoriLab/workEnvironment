#!/bin/bash
echo "************************************************************"
echo "These are the available IPs"
echo "`ifconfig |grep "inet addr" | awk -F ":" '{print $2}' |awk '{print $1}'`"
echo "************************************************************"
