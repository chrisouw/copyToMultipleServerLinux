#!/bin/bash
#filename="server.txt"
read -p "Path Source:" $source
read -p "Path Destination" $destination
#source="/home/agwadmin/app/server.txt"
#destination="/home/agwadmin/app"
SERVERS=(10.126.97.31 10.126.97.32)
for server in "${SERVERS[@]}"
do
        #scp /home/agwadmin/app/$filename agwadmin@$server:/home/agwadmin/app
        scp $source agwadmin@$server:$destination
done


SERVERS=(10.126.97.16 10.126.97.17 10.126.97.18 10.126.97.20 10.126.97.21 10.126.97.22 10.126.97.24 10.126.97.31 10.126.97.32 10.126.97.34 10.126.97.36 10.126.97.38)