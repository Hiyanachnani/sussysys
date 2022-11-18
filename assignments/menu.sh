#!/bin/bash
clear

menu(){
	echo "----------------------------"
	echo 
	echo "	MENU"
	echo
	echo "----------------------------"
	echo
	echo "1. Launch htop to see processor acitvities"
	echo "2. Users currently logged in"
	echo "3. Show CPU info"
	echo "4. Show filesystem"
	echo "5. Show graphics processor"
	echo "6. Open Network manager"
	echo "7. Show pci devices in tree format"
	echo "8. Show space available on hard disk"
	echo "9. Flex arch btw :)"
	echo "10. Exit"
	echo
	echo "----------------------------"
	echo
	echo "Please enter option [1 - 10]:"  
}

option=y

while [ "$option" != "10" ]
do
	banner welcomeee | lolcat
	espeak 'hola welcome to the menu'
	sl -F | lolcat
	menu | cowsay -f ghostbusters.cow | lolcat -a
	espeak 'hi im Benjamin the ghost what can i boooo for u today'
	
	read option

	case $option in
		1) htop;; # the user has to press [q] to exit and get back to main menu 
		2) who;;
		3) cat /proc/cpuinfo | grep -Em 4 "model name|cpu MHz|cpu cores|vendor_id";;
		4) lsblk;;
		5) lspci -v | grep -i vga;;
		6) nmtui;;
		7) lspci -vt;;
		8) df -i;;
		9) neofetch | lolcat;;
		10)espeak 'byee'| break;; # exit menu
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." 
clear

done
