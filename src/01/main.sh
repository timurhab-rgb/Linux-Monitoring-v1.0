#!/bin/bash
if [ "$#" -eq 1 ]; then
  if [[ "$1" =~ [0-9] ]] ; then
    echo "Ошибка: строка содержит цифры"
  else
    echo "$1"
  fi
else
  echo "Ошибка: требуется один аргумент"
fi
