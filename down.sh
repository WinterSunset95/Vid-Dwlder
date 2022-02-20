#!/bin/bash
red="\e[0;31m";
cyan="\e[0;36m";
other="\e[0;33m";
end="\e[m";

devType=`cat .devType`

logo () {
    clear
    printf "${red}


▒█░░▒█ ░▀░ █▀▀▄ ░░ ▒█▀▀▄ █░░░█ █░░ █▀▀▄ █▀▀ █▀▀█ 
░▒█▒█░ ▀█▀ █░░█ ▀▀ ▒█░▒█ █▄█▄█ █░░ █░░█ █▀▀ █▄▄▀ 
░░▀▄▀░ ▀▀▀ ▀▀▀░ ░░ ▒█▄▄▀ ░▀░▀░ ▀▀▀ ▀▀▀░ ▀▀▀ ▀░▀▀

    ${other}
GitHub: WinterSunset95
Instagram: winter_sunset_95

    ${end}"
}

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
song () {
    printf "\nMp3 download"
    printf "\nLink to target: "
    read link
    printf "Name the downloaded song: "
    read name
    youtube-dl --output "${name}.mp3" -f 140/m4a/bestaudio ${link}
    if [ "$devType" = "termux" ]
    then
        termux "$name"
    else 
        linux "$name"
    fi
    main
}
default () {
    printf "\nDefault downloader"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    youtube-dl --output "${name}.mp4" -f best ${link}
    if [ "$devType" = "termux" ]
    then
        termux "$name"
    else
        linux "$name"
    fi 
    main
}

main () {
    logo
    printf "

Download from: 
    1. Any site (default)
    2. YouTube
    3. Facebook
    4. Instagram
    5. Song Download
    6. Cancel
    "
    read -p '--> ' input
    printf "\n"
    if [ "$input" = "" ]
    then 
        default
    elif [ "$input" = "1" ]
    then
        default
    elif [ "$input" = "2" ] 
    then
        yt
    elif [ "$input" = "3" ]
    then
        fb
    elif [ "$input" = "4" ]
    then 
        ig 
    elif [ "$input" = "5" ]
    then
        song
    elif [ "$input" = "6" ]
    then
        printf '
Exit ---

'
 
    else 
        printf "\nInvalid . . .\nPress any key to continue . .\n"
        read -n 1
    fi
}
main
