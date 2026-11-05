#!/bin/bash

if [ "$#" -eq 4 ]; then
    if [[ "$1" =~ ^[1-6]$ && "$2" =~ ^[1-6]$ && "$3" =~ ^[1-6]$ && "$4" =~ ^[1-6]$ && "$1" != "$2" && "$3" != "$4" ]]; then
        source ./colors.sh
	source ./system_info.sh
	source ./print_info.sh
	print_info
    else
        echo "Ошибка. Запустите скрипт с другими параметрами."
    fi
else
    echo "Ошибка. Неправильное количество аргументов"
fi
