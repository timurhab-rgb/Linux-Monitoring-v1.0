#!/bin/bash

if [[ "$#" -eq 1 ]]; then
	if [[ "$1" == */ ]]; then
		if [[ -d "$1" ]]; then
			total_folders=$(find "$1" -type d | wc -l)
			total_files=$(find "$1" -type f | wc -l)
			mem=$(du -h "$1" | awk -v root="$1" '$2 != root' | sort -hr | head -5 )
			conf_files=$(find "$1" -type f -name "*.conf" | wc -l)
			echo "Total number of folders (including all nested ones) = $total_folders" 
			echo "Total number of files = $total_files"
			echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
			echo "$mem" | awk '{print NR " - " $2 ", " $1}'
			echo "Number of:"
			echo "Configuration files (with the .conf extension) = $conf_files"
		else
			echo "такой директории не существует"
		fi
	else
		echo "неккоректно введен путь"
	fi
else
	echo "неккоректное количество аргументов"
fi

