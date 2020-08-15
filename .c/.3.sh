#!/data/data/com.termux/files/usr/bin/bash
clear
cd 
figlet LINUX | lolcat -t
figlet PAYLOADS | lolcat -t
echo " "
tput setaf 1; echo "   [1] Linux Meterpreter Reverse Shell "
echo " " 
tput setaf 2; echo "   [2] Linux Meterpreter Reverse TCP Shellcode"
echo " "
tput setaf 3; echo "   [3] Back "
echo " "
read -p 'MeGaHaCk#❯❯❯ ' task
if [ "3" = "$task" ]
then
	cd $HOME/megahack && bash .1.sh
else
	cd $HOME/.c/.linux && bash ."$task".sh
fi
