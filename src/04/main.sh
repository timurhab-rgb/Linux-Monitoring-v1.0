#!/bin/bash


source ./config.sh
source ./color_names.sh

source ./color_scheme.sh

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

source ./colors.sh
source ./system_info.sh
source ./print_info.sh
print_info
echo
print_color_scheme
