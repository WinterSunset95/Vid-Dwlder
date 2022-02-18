#!/bin/bash
red="\e[0;31m";
cyan="\e[0;36m";
other="\e[0;33m";
end="\e[m";

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

yt () {
    printf "\nYouTube"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    youtube-dl --output "${name}.mp4" ${link}
    main
}
fb () {
    printf "\nFacebook"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    fbdown --output "${name}.mp4" ${link}
    main
}
ig () {
    printf "\nInstagram"
    printf "\nLink to video: "
    read link
    printf "Name the downloaded video: "
    read name
    instasave --output "${name}.mp4" ${link}
    main

}


main () {
    printf "\n\nDownload from: \n1. YouTube\n2. Facebook\n3. Instagram\n4. Cancel\n"
    read -n 2 -p "--> " input
    printf "$input"
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
