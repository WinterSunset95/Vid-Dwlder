#!/bin/bash
red="\e[0;31m";
end="\e[m";

termux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    apt update
    apt -y upgrade
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    apt install -y python 
    printf "\n\n${red}Installing wget if not previously installed . . . \n\n${end}"
    apt install -y wget aria2 

#    printf "\n\n${red}Installing nodejs if not previously installed${end}"
#    apt install nodejs
    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    mkdir /sdcard/Download/Vid-Dwlder/
#    cd assets/
#    npm install inquirer
    wget https://yt-dl.org/downloads/latest/youtube-dl -O $PREFIX/bin/youtube-dl
    chmod a+rx $PREFIX/bin/youtube-dl
    python3 -m pip install -U yt-dlp hentai
    pip install -U git+https://github.com/anime-dl/anime-downloader.git
    printf "termux" > .devType
}

linux () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    sudo apt update
    sudo apt -y upgrade
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    sudo apt install -y python 
    printf "\n\n${red}Installing wget if not previously installed . . . \n\n${end}"
    sudo apt install -y wget 
#    printf "\n\n${red}Installing nodejs if not previously installed"
#    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    mkdir ~/vd-downloaded/
#    cd assets
#    npm install inquirer
    sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl
    sudo python3 -m pip install -U yt-dlp hentai anime-downloader
    printf "linux" > .devType
}
arch () {
    printf "\n\n${red}Updating and upgrading . . . \n\n${end}";
    sudo pacman -Syu
    printf "\n\n${red}Installing python if not previously installed . . . \n\n${end}"
    sudo pacman -S python
    printf "\n\n${red}Installing wget if not previously installed . . . \n\n${end}"
    sudo pacman -S wget
#    printf "\n\n${red}Installing nodejs if not previously installed"
#    printf "\n\n${red}Installing required modules . . . \n\n${end}"
    mkdir ~/vd-downloaded/
#    cd assets
#    npm install inquirer
    sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl
    sudo python -m pip install -U yt-dlp hentai anime-downloader
    printf "linux" > .devType
}


printf "\n\nPick your device: \n1. Termux\n2. Debian-based\n3. Arch\n--> "
read num

if [ "$num" = "1" ]
then
    termux
elif [ "$num" = "2" ]
then
    linux
elif [ "$num" = "3" ]
then
    arch
else
    printf "\n\nInvalid - - Exiting - - \n\n";
fi
