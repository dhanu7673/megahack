#!/data/data/com.termux/usr/bin/bash
clear
figlet WINDOWS | lolcat -t
figlet LISTNER  | lolcat -t
echo " "
tput setaf 1; echo "  [1] Windows Meterpreter Reverse_tcp"
echo " "
tput setaf 2; echo "  [2] windows/shell/reverse_tcp "
echo " "
tput setaf 3; echo "  [3] Back"
echo " "
read -p 'MeGaHaCk#❯❯❯ ' task
if [ "3" = "$task" ]
then
	cd $HOME/megahack && bash .2.sh
else
	echo " "
cd .windows
bash ".$task".sh
fi
