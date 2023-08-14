#!/bin/sh

dayanddate () {
	LC_TIME="en_US.UTF-8" date '+%e %B %G %A'
}

internet () {
	~/.local/share/dwm/internet.sh
}

battery () {
	~/.local/share/dwm/battery.sh

}
timedate(){
	date '+%H:%M:%S '
}
while :; do 
	xsetroot -name "$(dayanddate)"";""$(internet)"" $(battery)""$(timedate)"
done
