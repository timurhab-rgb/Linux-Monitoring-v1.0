#!/bin/bash

print_line() {
    echo -e "\033[${bg_name}m\033[${text_name}m$1\033[0m = \033[${bg_value}m\033[${text_value}m$2\033[0m"
}


print_info(){
print_line "HOSTNAME" "$my_hostname"
print_line "USER" "$my_user"
print_line "OS" "$my_os"
print_line "TIMEZONE" "$timezone UTC $utc"
print_line "DATE" "$my_date"
print_line "UPTIME" "$up_time"
print_line "UPTIME_SEC" "$up_time_sec"
print_line "IP" "$ip"
print_line "GATEWAY" "$gateway"
print_line "MASK" "$mask"
print_line "RAM_TOTAL" "$ram_total"
print_line "RAM_USED" "$ram_used"
print_line "RAM_FREE" "$ram_free"
print_line "SPACE_ROOT" "$space_root"
print_line "SPACE_ROOT_USED" "$space_root_used"
print_line "SPACE_ROOT_FREE" "$space_root_free"
}
