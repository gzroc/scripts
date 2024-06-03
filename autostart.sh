#!/bin/bash

#打开副屏
#xrandr --output dvi-i-1 --auto --primary --output dp-1 --auto --left-of dvi-i-1
#宿舍双屏配置
#xrandr --output DP-1 --primary --auto --right-of DVI-I-1 --output DVI-I-1 --auto --rotate left
xrandr --output DP-1 --primary --auto --right-of DVI-I-1 --output DVI-I-1 --auto
#打开三屏
#xrandr --output DP1 --auto --primary --output DP-1 --auto --right-of DP1 --output DVI-I-1 --mode 1920x1080 --rate 60 --auto --right-of DP-1
fcitx5 &
picom &
#打开词典
goldendict 

#更新壁纸
/bin/bash ~/github/scripts/auto_change_wallpaper.sh &

#更新我最喜欢的音乐播放列表
/bin/bash ~/github/scripts/auto_update_playlist.sh &
#加载状态栏
/bin/bash ~/github/scripts/statusbar.sh &

#通知管理器
dunst &
#sleep 1s
#xrandr --output DP-1-1 --right-of DP1 --auto
#sleep 6s
sleep 6s
#加载截图工具
flameshot &
#启动MPD程序
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
# 关闭屏保和省电
xset s off
xset s noblank
xset -dpms
