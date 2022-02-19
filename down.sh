#!/bin/bash
red="\e[0;31m";
cyan="\e[0;36m";
other="\e[0;33m";
end="\e[m";

devType=`cat .devType`

clear
printf "${red}


██╗░░░██╗██╗██████╗░░░░░░░██████╗░░██╗░░░░░░░██╗██╗░░░░░██████╗░███████╗██████╗░
██║░░░██║██║██╔══██╗░░░░░░██╔══██╗░██║░░██╗░░██║██║░░░░░██╔══██╗██╔════╝██╔══██╗
╚██╗░██╔╝██║██║░░██║█████╗██║░░██║░╚██╗████╗██╔╝██║░░░░░██║░░██║█████╗░░██████╔╝
░╚████╔╝░██║██║░░██║╚════╝██║░░██║░░████╔═████║░██║░░░░░██║░░██║██╔══╝░░██╔══██╗
░░╚██╔╝░░██║██████╔╝░░░░░░██████╔╝░░╚██╔╝░╚██╔╝░███████╗██████╔╝███████╗██║░░██║
░░░╚═╝░░░╚═╝╚═════╝░░░░░░░╚═════╝░░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚══════╝╚═╝░░╚═╝

${other}
GitHub: WinterSunset95
Instagram: winter_sunset_95

${end}"

termux () {
    mv "$1.mp4" /sdcard/Downloaded_files
}
linux () {
    mv "$1.mp4" downloaded/
}

yt () {
    printf "\nYouTube"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    youtube-dl --output "${name}.mp4" ${link}
    if [ "$devType" = "termux" ]
    then
        termux "$name"
    else
        linux "$name"
    fi
    main
}
fb () {
    printf "\nFacebook"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    fbdown --output "${name}.mp4" ${link}
    if [ "$devType" = "termux" ]
    then
        termux "$name"
    else
        linux "$name"
    fi
    main
}
ig () {
    printf "\nInstagram"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    youtube-dl --output "${name}.mp4" --all-formats ${link}
    if [ "$devType" = "termux" ]
    then
        termux "$name"
    else
        linux "$name"
    fi 
    main
}

function () {
    printf '\n\nThis is a printed line'
}
main () {
    printf "\n\nDownload from: \n1. YouTube\n2. Facebook\n3. Instagram\n4. Cancel\n"
    read -n 2 -p "--> " input
    printf "\n"
    if [ "$input" = "1" ]
    then
        yt
    elif [ "$input" = "2" ] 
    then
        fb
    elif [ "$input" = "3" ]
    then
        ig
    elif [ "$input" = "4" ]
    then
        printf "\nExiting\n"
    else 
        printf "\nInvalid . . .\nPress any key to continue . .\n"
        read -n 1
    fi
}
main
