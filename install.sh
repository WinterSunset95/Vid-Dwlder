#!/bin/bash
red="\e[0;31m";
end="\e[m";

termux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    apt update
    apt upgrade -y
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    apt install python -y
    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    pip install youtube-dl2
    pip install --upgrade youtube-dl
    pip install download
    pip install fb-down
    mkdir /sdcard/Downloaded_files/
    printf "termux" > .devType
}

linux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    sudo su
    apt update
    apt upgrade -y
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    apt install python -y
    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    pip install youtube-dl2
    pip install --upgrade youtube-dl
    pip install download
    pip install fb-down
    mkdir downloaded/
    printf "linux" > .devType
}

printf "\n\nPick your device: \n1. Termux\n2. Linux\n--> "
read num

if [ "$num" = "1" ]
then
    termux
elif [ "$num" = "2" ]
then
    linux
else
    printf "\n\nInvalid - - Exiting - - \n\n";
fi