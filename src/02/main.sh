#!/bin/bash
script_dir=$(dirname "$0")

source "$script_dir/print_info.sh"
source "$script_dir/system_info.sh"

print_info

read -p "Сохранить информацию в файл? (Y/N):" answer

timedate=$(date +"%d_%m_%y_%H_%M_%S")
filename="${timedate}.status"


if [[ "$answer" = "Y" || "$answer" = "y" ]]; then
  print_info > "$filename"
else
  echo "не сохроняю"
fi
