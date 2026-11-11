#!/bin/bash

source "$script_dir/config.conf"

if [[ -z "$column1_background" ]]; then
    column1_background=6
    column1_bg_default=1
else
    column1_bg_default=0
fi

if [[ -z "$column1_font_color" ]]; then
    column1_font_color=1
    column1_font_default=1
else
    column1_font_default=0
fi

if [[ -z "$column2_background" ]]; then
    column2_background=6
    column2_bg_default=1
else
    column2_bg_default=0
fi

if [[ -z "$column2_font_color" ]]; then
    column2_font_color=1
    column2_font_default=1
else
    column2_font_default=0
fi



