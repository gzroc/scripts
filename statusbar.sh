#/bin/bash
while true; do
		xsetroot -name "Vol. $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +"%a, %b %d %R")"
	sleep 1s	
done &
