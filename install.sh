#! /bin/sh

cp fan_control /etc/init.d -v
cp fan_control.py /opt -v

chmod +x /etc/init.d/fan_control
update-rc.d fan_control defaults
service fan_control start
update-rc.d fan_control enable

