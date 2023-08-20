#!/bin/bash

if [ "$1" == "" ]
then
	echo "IP adresi girmeyi unuttun!"
	echo "Ornek syntax: ./ipfinder.sh 192.168.1"
else
	for i in {1..255}
	do
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
fi

