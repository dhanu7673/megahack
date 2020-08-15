#!/data/data/com.termux/files/usr/bin/bash
clear
figlet ANDROID | lolcat -t
figlet PAYLOADS | lolcat -t
tput setaf 3; echo "    "
echo " "
tput setaf 2; echo "    [1] Embed Meterpreter Payload in orignal apk"
echo " "
tput setaf 6; echo "    [2] Create Meterpreter reverse Payload"
echo " "
tput setaf 1; echo "    [3] Back"
echo " "
read -p 'MeGaHaCk#❯❯❯ '  task
if [ "3" = "$task" ]
then
	cd .. && bash .1.sh
else
	echo " "
fi
cd .android
bash ".${task}.sh"

