#!/usr/bin/zsh

sudo kill $(cat /home/roy/projects/PEC_WIFI/pidfile)
echo $$ > /home/roy/projects/PEC_WIFI/pidfile
while true;
do
	if [ ! -z $(curl -s http://www.google.com | grep 172.31.1.220) ];
		then
			msg=$(curl -s -d "username=$(cat /home/roy/projects/PEC_WIFI/my_cp_user)&password=$(cat /home/roy/projects/PEC_WIFI/my_cp_pass)&mode=191" http://172.31.1.220:8090/httpclient.html | sed 's/CDATA\[/\n/g' | sed 's/\]\]/\n/g' | sed -n '4p')
			echo $msg
			notify-send "PEC Network" $msg
	fi
	sleep 3
done
