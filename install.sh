#!/data/data/com.termux/files/usr/bin/bash
pkg install figlet -y
clear
tput setaf 5; echo " █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
 █░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█
 █░░║║║╠─║─║─║║║║║╠─░░█
 █░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█
 █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█"
 echo " "
figlet INSTALLING | lolcat -t
echo " "
cd $PREFIX/bin
if [ -d $apkmod ]
then
	for i in 1 2 3 4 5 6 7
	do
		tput setaf 4; echo " CHECKING APKMOD......$1"
	done
else
	cd && wget https://raw.githubusercontent.com/Hax4us/Apkmod/master/setup.sh && sh setup.sh
fi
tput setaf 4;echo "APKMOD FOUDNED "
echo " "
for i in 1 2 3 4 5 6 7 8 9 
do
	tput setaf 2; echo " FOUNDING METASPLOIT-FRAMEWORK....$1"
done
if [ -f msfconsole ]
then
	tput setaf 2; echo " METASPLOIT-FRAMEWORK FOUND..."
else
	wget https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh && chmod +x metasploit.sh && ./metasploit.sh
fi
for i in  a b c d e f g h i j k l m n o p q r s t u v w x y z
do
	tput setaf 2; echo " INSTALLING MEGAHACK............$i"
done
tput setaf 6; echo " "
pkg install ruby -y
gem install lolcat
pkg install toilet -y
clear
figlet INSTALED | lolcat -t
echo " "
echo " " 
echo " " 
echo " "
echo " "
tput setaf 1; echo " DO YOU WANT SET A SHORTCUT FOR START MEGAHACK n/y"
echo " "
read task
if [ "y" = "$task" ]
then
	cd $PREFIX/etc && echo "alias megahack='cd $HOME/megahack && bash megahack'" >> bash.bashrc && tput setaf 1; echo "REOPEN YOUR TERMUX AND TYPE megahack FOR START megahack IN ANY DIRECTORY"
else
	exit
fi






