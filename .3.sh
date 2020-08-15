#!/data/data/com.termux/files/usr/bin/bash
clear
figlet updating | lolcat -t
for i in 1 2 3 4 5 6 7 8 9 0
do 
	tput setaf 2; echo " Updating.............$1"
done
cd
rm -rf megahack
git clone https://github.com/dhanu7673/M3gaHack
cd M3gaHack
bash install.sh
cd megahack && bash megahack

