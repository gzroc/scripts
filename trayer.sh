#!/bin/bash
killall trayer
if [ $? != 0 ];then
	trayer --edge top --widthtype pixel --height 30 --tint 0
#	trayer
fi
