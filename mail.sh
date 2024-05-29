fetchmail --check 2>/dev/null | while read line; do
	new=`echo $line | sed 's/(//' | awk '{print $1-$3}'`
	if [ $new != 0 ] && [ ! -e ~/.message ]; then
		echo "New mail($new)" > ~/.message
		echo "!!! !!! !!!" >> ~/.message
		sleep 60
		if grep '^New mail' ~/.message >/dev/null 2>/dev/null; then
			rm -f ~/.message
		fi
	fi
done &
while true; do
	if [ -r ~/.message ]; then
		while read line; do
			xsetroot -name "$line"
			sleep 1
		done < ~/.message
	else
		xsetroot -name "`date` `uptime | sed 's/.*,//'`"
		sleep 1
	fi
done &
exec dwm
rm -f ~/.message
