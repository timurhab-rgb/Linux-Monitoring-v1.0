#!/bin/bash
script_dir=$(dirname "$0")

if [[ "$#" -eq 1 ]]; then
    if [[ "$1" == */ ]]; then
        if [[ -d "$1" ]]; then
            "$script_dir/print_info.sh" "$1"
        else
            echo "Такой директории не существует"
        fi
    else
        echo "Некорректно введен путь"
    fi
else
    echo "Некорректное количество аргументов"
fi
