#!/data/data/com.termux/files/usr/bin/bash
clear
echo " "
figlet LINUX | lolcat -t
figlet LISTNER | lolcat -t
cd
tput setaf 1; echo "   [1] Linux Bind Meterpreter Reverse Shell "
echo " "
tput setaf 2; echo "   [2] Linux Meterpreter Reverse TCP Shellcode"
echo " "
tput setaf 3; echo "   [3] Back "
echo " "
read -p 'MeGaHaCk#❯❯❯ ' task
if [ "3" = "$task" ]
then
	cd $HOME/megahack && bash .2.sh
else
	cd $HOME/megahack/.l/.linux && bash ."$task".sh
fi
