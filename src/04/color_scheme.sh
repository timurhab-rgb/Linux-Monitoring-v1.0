#!/bin/bash

print_color_scheme(){
	get_color_name "$column1_background"

	if [[ "$column1_bg_default" -eq 1 ]]; then
	    echo "Column 1 background = default ($color_name)"
	else
   	    echo "Column 1 background = $column1_background ($color_name)"
	fi

	get_color_name "$column1_font_color"
	if [[ "$column1_font_default" -eq 1 ]]; then
   	    echo "Column 1 font color = default ($color_name)"
	else
    	    echo "Column 1 font color = $column1_font_color ($color_name)"
	fi

	get_color_name "$column2_background"
	if [[ "$column2_bg_default" -eq 1 ]]; then
    	    echo "Column 2 background = default ($color_name)"
	else
    	    echo "Column 2 background = $column2_background ($color_name)"
	fi

	get_color_name "$column2_font_color"
	if [[ "$column2_font_default" -eq 1 ]]; then
    	    echo "Column 2 font color = default ($color_name)"
	else
    	    echo "Column 2 font color = $column2_font_color ($color_name)"
	fi
}
