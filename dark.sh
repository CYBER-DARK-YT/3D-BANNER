#!/bin/bash

#code by spy

#YouTube channel REDSPY TECH

apt update 

apt upgrade -y

termux-setup-storage -y

apt install figlet -y

apt install ruby -y

gem install lolcat -y

clear

cd /data/data/com.termux/files/usr/share/figlet

git clone https://github.com/RED5PY/RDS-figlet >> /dev/null 2>&1

mv RDS-figlet/* /data/data/com.termux/files/usr/share/figlet&&  rm -rf RDS-figlet

cd $HOME

clear

#colourcode

white='\e[1;37m'
green='\e[0;32m'
blue='\e[1;34m'
red='\e[1;31m'
yellow='\e[1;33m'

echo " "

banner() { 

figlet -f 3D.flf DARK-BAN | lolcat -t

echo -e "${white}[1]" "${red} 3D font"
sleep 1.0 
echo
echo -e "${white}[2]" "${red} Bloody"
sleep 1.0
echo
echo -e "${white}[3]" "${red} Basic font"
sleep 1.0
echo
echo -e "${white}[4]" "${red} Subscribe channel"
sleep 1.0
echo
echo -e "${white}[5]" "${red} about this tool"
}

banner
echo
3dfont() {

read -p " type your text here:" font

figlet -f 3D.flf ${font}

sleep 1.0

}

bloody() {

read -p "type your text here:" font

figlet -f Bloody.flf ${font}

sleep 1.0

}

basic() {

read -p "type your text here:" font

figlet -f Basic.flf ${font}

}

read -p " select your font :" option
echo
echo

if [[ $option == "1" ]]; then

3dfont

     sleep 1.0
     echo
     
 elif [[ $option == "2" ]]; then

bloody
     
     sleep 1.0
     echo

 elif [[ $option == "3" ]]; then
 
basic 
   
     echo
     sleep 1.0

 elif [[ $option == "4" ]]; then
     echo 
     
am start -a android.intent.action.VIEW -d https://youtube.com/channel/UCKZ96oQF2l_2csD4rDtwY-g
 elif [[ $option == "5" ]]; then
     echo
     echo
     #about

else
        echo "[*] Error, Select a option from the above list"
        sleep 5.0
exit
exit

fi
