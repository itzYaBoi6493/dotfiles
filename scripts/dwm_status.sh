#!/bin/bash

battery() {
	acpi -ib | sed 1q | awk '{print $4, $5}' | sed 's/,//g'
}

time_and_date() {
	date +"%B %d %R"
}

interval=0
while true; do
	t=$(time_and_date)
	bat=$(battery)
	xsetroot -name "$t | $bat"
	sleep 60
done
