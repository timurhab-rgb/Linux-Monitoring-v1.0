#!/bin/bash

my_hostname=$(hostname)
my_user=$(whoami)

source /etc/os-release
my_os="$PRETTY_NAME"

timezone=$(timedatectl show -p Timezone --value)
utc=$(date +%z)
my_date="$(date +"%d %B %Y %T")"
up_time=$(uptime -p | awk '{print $2" "$3}')
up_time_sec=$(cat /proc/uptime | awk '{print $1}')
ip=$(hostname -I)
gateway=$(ip route | grep default | awk '{print $3}')
ip_freak=$(ip -4 a show enp0s3 | grep inet | awk '{print $2}')
mask=$(ipcalc "$ip_freak" | grep Netmask | awk '{print $2}')



echo "HOSTNAME = $my_hostname"
echo "USER = $my_user"
echo "OS = $my_os"
echo "TIMEZONE = $timezone UTC $utc"
echo "DATE = $my_date"
echo "UPTIME = $up_time"
echo "UPTIME_SEC = $up_time_sec"
echo "IP = $ip"
echo "GATEWAY = $gateway"
echo "MASK = $mask"
