#!/bin/bash

padding_num=$((($(tput cols) - 9)/2))
padding=""
for i in $(eval echo "{1..$padding_num}"); do padding="$padding "; done

if [[ ! -z $1 ]]; then
   clear
fi

printf "\n"
printf "$padding\033[47m  \033[41m       \033[0m\n"
printf "$padding\033[47m  \033[42m       \033[0m\n"
printf "$padding\033[47m  \033[43m       \033[0m\n"
printf "$padding\033[47m  \033[44m       \033[0m\n"
printf "$padding\033[47m  \033[45m       \033[0m\n"
printf "$padding\033[47m  \033[46m       \033[0m\n"
