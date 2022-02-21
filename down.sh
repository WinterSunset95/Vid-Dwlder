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

#This function moves the file to the download folder
move () {
    if [ "$devType" = "termux" ]
    then
        mv "$1" /sdcard/Vid-Dwlder/
    else 
        mv "$1" downloaded/
    fi
}
#Call mode
mode () {
    printf "\n${cyan}$1${end}"
    printf "\nLink to file: "
    read link
    printf "Name the downloaded file: "
    read name
}

yt () {
    mode "YouTube"
    youtube-dl --output "${name}.mp4" ${link}
    move "$name.mp4"
    main
}
fb () {
    mode "Facebook"
    yt-dlp --output "${name}.mp4" ${link}
    move "$name.mp4"
    main
}
ig () {
    mode "Instagram"
    youtube-dl --output "${name}.mp4" --all-formats ${link} || yt-dlp --output "${name}.mp4" ${link}

    move "$name.mp4"
    main
}
song () {
    mode "Mp3"
    youtube-dl --output "${name}.mp3" -f mp3/m4a/bestaudio ${link}
    move "$name.mp3"
    main
}
pin () {
    mode "Pinterest"
    youtube-dl --output "${name}.mp4" -f mp4/best/22/17/18/136/137 ${link}
    move "$name.mp4"
    main
}
reddit () {
    mode "Reddit"
    youtube-dl --output "${name}.mp4" -f mp4/best/22/17/18/136/137 ${link}
    move "$name.mp4"
    main
}
nsfw () {
    mode "Default Downloader"
    yt-dlp --output "${name}.mp4" -f best ${link}
    move "$name.mp4"
    main
}
nht () {
    printf "\n${cyan}Nhentai code: ${end}"
    read code
    hentai -V download --id ${code}
    move "$code"
    main
}
default () {
    mode "Default Downloader"
    youtube-dl --output "${name}.mp4" -f best ${link}
    move "$name.mp4"
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
    5. Pinterest
    6. Reddit
    7. NSFW sites
    8. Nhentai Download
    9. Anime Download
    10. Song Download
    11. Cancel
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
        pin
    elif [ "$input" = "6" ]
    then
        reddit
    elif [ "$input" = "7" ]
    then
        nsfw
    elif [ "$input" = "8" ]
    then
        nht

    elif [ "$input" = "10" ]
    then
        song
 
    elif [ "$input" = "11" ]
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
