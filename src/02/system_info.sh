#!/bin/bash

my_hostname=$(hostname)
my_user=$(whoami)
source /etc/os-release
my_os="$PRETTY_NAME"
timezone=$(timedatectl show -p Timezone --value)
utc=$(date +%z)
my_date="$(date +"%d %B %Y %T")"
up_time=$(uptime -p | cut -d ' ' -f 2-)
up_time_sec=$(cat /proc/uptime | awk '{print $1}')
ip=$(hostname -I)
gateway=$(ip route | grep default | awk '{print $3}')
ip_freak=$(ip -4 a show enp0s3 | grep inet | awk '{print $2}')
mask=$(ipcalc "$ip_freak" | grep Netmask | awk '{print $2}')
ram_total=$(free -m | grep Mem | awk '{printf "%.3f GB\n", $2 / 1024}')
ram_used=$(free -m | grep Mem | awk '{printf "%.3f GB\n", $3 / 1024}')
ram_free=$(free -m | grep Mem | awk '{printf "%.3f GB\n", $4 / 1024}')
space_root=$(df -B1 / | grep /dev | awk '{printf "%.2f MB\n", $2 / 1000000}')
space_root_used=$(df -B1 / | grep /dev | awk '{printf "%.2f MB\n", $3 / 1000000}')
space_root_free=$(df -B1 / | grep /dev | awk '{printf "%.2f MB\n", $4 / 1000000}')
