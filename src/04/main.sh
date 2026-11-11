#!/bin/bash
script_dir=$(dirname "$0")

source "$script_dir/config.sh"
source "$script_dir/color_names.sh"
source "$script_dir/color_scheme.sh"

if [[ "$column1_background" =~ ^[1-6]$ &&
      "$column1_font_color" =~ ^[1-6]$ &&
      "$column2_background" =~ ^[1-6]$ &&
      "$column2_font_color" =~ ^[1-6]$ ]]; then
	:
else
	echo "Ошибка. Цвета должны быть числами от 1 до 6."
	exit 1
fi

if [[ "$column1_background" == "$column1_font_color" ||
      "$column2_background" == "$column2_font_color" ]]; then
	echo "Ошибка. Цвета текста и фона не должны совпадать."
	exit 1
fi

source "$script_dir/colors.sh"
source "$script_dir/system_info.sh"
source "$script_dir/print_info.sh"
print_info
echo
print_color_scheme
