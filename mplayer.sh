while true;
	do mplayer "`find -H ~/Music -name '*.mp3' -o -name '*.ogg' | sort -R | head -n1`";
done

