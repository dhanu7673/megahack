#!/data/data/com.termux/files/usr/bin/bash
clear
figlet macOS | lolcat -t
figlet Payload | lolcat -t
echo " "
echo " "
tput setaf 1; echo "  [1] Mac Reverse Shell"
echo " "
tput setaf 3; echo "  [2] Mac Reverse TCP Shellcode
"
echo " " 
tput setaf 2; echo "  [3] Back"
 echo " " 
 read -p 'MeGaHaCk#❯❯❯ ' task
 if [ "3" = "$task" ]
 then
	 cd $HOME/megahack && bash .1.sh
 else
	 cd $HOME/megahack/.c/.macOS/."$task".sh
 fi
