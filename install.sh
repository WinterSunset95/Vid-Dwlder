#!/bin/bash
red="\e[0;31m";
end="\e[m";

termux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    apt update
    apt upgrade -y
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    apt install python -y
    printf "\n\n${red}Installing wget if not previously installed . . . \n\n${end}"
    apt install wget -y

#    printf "\n\n${red}Installing nodejs if not previously installed${end}"
#    apt install nodejs
    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    pip install fb-down
    mkdir /sdcard/Downloaded_files/
#    cd assets/
#    npm install inquirer
    wget https://yt-dl.org/downloads/latest/youtube-dl -O $PREFIX/bin/youtube-dl
    chmod a+rx $PREFIX/bin/youtube-dl
    printf "termux" > .devType
}

linux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    sudo su
    apt update
    apt upgrade -y
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    apt install python -y
    printf "\n\n${red}Installing wget if not previously installed . . . \n\n${end}"
    apt install wget -y
#    printf "\n\n${red}Installing nodejs if not previously installed"
#    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    pip install fb-down
    exit
    mkdir downloaded/
#    cd assets
#    npm install inquirer
    sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl
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
