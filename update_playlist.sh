#!/bin/bash

# 指定播放列表和音乐目录
playlist="/home/ken/Music/playlist/mylike.m3u"
music_dir="/home/ken/Music/我最喜欢的音乐"

# 在音乐目录中查找所有支持的音乐文件并生成播放列表
find "$music_dir" -type f \( -iname "*.mp3" -o -iname "*.flac" -o -iname "*.m4a" -o -iname "*.ape" -o -iname "*.wav" -o -iname "*.dsf" \) > "$playlist"

# 如果你的音乐文件有其他格式，请根据需要添加或修改文件类型过滤条件

echo "Playlist updated successfully!"
