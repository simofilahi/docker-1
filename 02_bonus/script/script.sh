#!/bin/bash

function print_info
{
	val=1
	while [[ $val != 0 ]]; do
		echo -n "insert 0 to return: "
		read val
	done
	return
}
tput smcup
while [[ $REPLY  != 0 ]]; do
	echo -n $(tput setab 4)
	clear
	echo "
	Please Select:

	1. Display Containre_Id
	2. Display Disk Space
	3. Display Running Process
	0. Quit"
	read -p "Enter selection [0-3]: "

	tput cup 10 0
	echo -n $(tput setab 0)
	tput ed
	tput cup 11 0

	if [[ $REPLY =~ ^[0-3]$ ]]; then
		if [[ $REPLY == 1 ]]; then
			echo "Hostname: $HOSTNAME"
			print_info
		fi
		if [[ $REPLY == 2 ]]; then
			df -h
			print_info
		fi
		if [[ $REPLY == 3 ]]; then
			if [[ $(id -u) -eq 0 ]]; then
				echo "Running Process"
				top
			fi
			print_info
		fi
	else
		echo "Invalid entry."
		sleep 1
	fi
done
tput rmcup
echo "Program Terminated"
