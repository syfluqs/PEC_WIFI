#!/usr/bin/zsh

sudo kill $(cat /home/roy/projects/PEC_WIFI/pidfile)
msg=$(curl -s -d "username=$(cat /home/roy/projects/PEC_WIFI/my_cp_user)&password=$(cat /home/roy/projects/PEC_WIFI/my_cp_pass)&mode=193" http://172.31.1.220:8090/httpclient.html | sed 's/CDATA\[/\n/g' | sed 's/\]\]/\n/g' | sed -n '4p') 
echo $msg
notify-send "PEC Network" $msg
