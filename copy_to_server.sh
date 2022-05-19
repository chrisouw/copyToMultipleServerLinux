#!/bin/bash
#filename="server.txt"
read -p "Path Source:" $source
read -p "Path Destination" $destination
#source="/home/agwadmin/app/filename_and_type"
#destination="/home/agwadmin/app"
SERVERS=(10.126.97.31 10.126.97.32) #list of server's IP 
for server in "${SERVERS[@]}"
do
        #scp /home/agwadmin/app/$filename agwadmin@$server:/home/agwadmin/app
        scp $source agwadmin@$server:$destination
done

#Prod
##SERVERS=(10.126.212.209 10.126.212.210 10.126.212.211 10.126.212.214 10.126.212.212 10.126.212.215 10.126.212.213 10.126.212.216)
#DRC
##SERVERS=(10.126.223.209 10.126.223.210 10.126.223.211 10.126.223.214 10.126.223.212 10.126.223.215 10.126.223.213 10.126.223.216)
#UIT and SIT
##SERVERS=(10.126.97.16 10.126.97.17 10.126.97.18 10.126.97.20 10.126.97.21 10.126.97.22 10.126.97.24 10.126.97.31 10.126.97.32 10.126.97.34 10.126.97.36 10.126.97.38)
