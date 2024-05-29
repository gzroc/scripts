#/bin/bash
while true; do
		xsetroot -name "天下武功，唯快不破！| Vol. $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +"%a, %b %d %R")"
	sleep 1s	
done &
