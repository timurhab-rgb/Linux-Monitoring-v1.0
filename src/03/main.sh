#!/bin/bash

script_dir=$(dirname "$0")

if [ "$#" -eq 4 ]; then
    if [[ "$1" =~ ^[1-6]$ && "$2" =~ ^[1-6]$ && "$3" =~ ^[1-6]$ && "$4" =~ ^[1-6]$ && "$1" != "$2" && "$3" != "$4" ]]; then
	source "$script_dir/colors.sh"
	source "$script_dir/system_info.sh"
	source "$script_dir/print_info.sh"

	print_info
    else
        echo "Ошибка. Запустите скрипт с другими параметрами."
    fi
else
    echo "Ошибка. Неправильное количество аргументов"
fi
