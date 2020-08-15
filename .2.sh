#!/data/data/com.termux/files/usr/bin/bash
clear
figlet Msfconsole | lolcat -t
figlet Listner | lolcat -t
tput setaf 5; echo " "
echo " "
tput setaf 1; echo "   [1] Android"
echo " "
tput setaf 2; echo "   [2] Windows"
echo " "
tput setaf 3; echo "   [3] Linux"
echo " "
tput setaf 4; echo "   [4] MacOS"
echo " "
tput setaf 5; echo "   [5] Php Reverse Shell"
echo " " 
tput setaf 6; echo "   [6] Bash Reverse Shell"	
echo " "
tput setaf 7; echo "   [7] Python Reverse Shell"
echo " "
tput setaf 1; echo "   [8] Back"
echo " "
read -p 'MeGaHaCk#❯❯❯ ' task
if [ "8" = "$task" ]
then
	cd $HOME/megahack && bash megahack
else
	echo " "
fi
cd .l
bash ".${task}.sh"
