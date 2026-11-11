#!/bin/bash

SECONDS=0


dir_path=$1

total_folders=$(find "$dir_path" -type d | wc -l)
total_files=$(find "$dir_path" -type f | wc -l)
mem=$(du -h "$dir_path" | awk -v root="$dir_path" '$2 != root' | sort -hr | head -5)
conf_files=$(find "$dir_path" -type f -name "*.conf" | wc -l)
text_files=$(find "$dir_path" -type f -name "*.txt" | wc -l)
exic_files=$(find "$dir_path" -type f -executable | wc -l)
log_files=$(find "$dir_path" -type f -name "*.log" | wc -l)
link_files=$(find "$dir_path" -type l | wc -l)
arch_files=$(find "$dir_path" -type f \( -name "*.zip" -o -name "*.7z" -o -name "*.tar" -o -name "*.rar" -o -name "*.gz" \) | wc -l)
top_f=$(find "$dir_path" -type f -exec du -h {} + | sort -hr | head -10 | awk '{file=$2; sub(".*/", "", file); n=split(file, a, "."); ext=(n>1 ? a[n] : "unknown"); print NR " - " $2 ", " $1 ", " ext}')
top_exe=$(find "$dir_path" -type f -executable -exec du -h {} + | sort -hr | head -10 | awk '{printf "%d - %s, %s, ", NR, $2, $1; system("md5sum \"" $2 "\" | cut -d\" \" -f1")}')

echo "Total number of folders (including all nested ones) = $total_folders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$mem" | awk 'NF {print NR " - " $2 ", " $1}'
echo "Total number of files = $total_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $text_files"
echo "Executable files = $exic_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $arch_files"
echo "Symbolic links = $link_files"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$top_f"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
echo "$top_exe"
echo "Script execution time (in seconds) = $SECONDS"
