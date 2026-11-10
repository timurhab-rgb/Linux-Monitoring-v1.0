#!/bin/bash

get_color() {
    case "$1" in
        1) color=47 ;;
        2) color=41 ;;
        3) color=42 ;;
        4) color=44 ;;
        5) color=45 ;;
        6) color=40 ;;
    esac
}



get_color "$column1_background"
bg_name=$color

get_color "$column1_font_color"
text_name=$((color - 10))

get_color "$column2_background"
bg_value=$color

get_color "$column2_font_color"
text_value=$((color - 10))

