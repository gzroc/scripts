# 监视文件夹并在文件变化时执行命令
while true; do
    inotifywait -e modify,create,delete -r /home/ken/Music
    # 在这里添加执行的命令，比如更新播放列表的脚本

    echo "Files in /home/ken/Music/我最喜欢的音乐 have changed, updating playlist..."
    # 调用更新播放列表的脚本或命令
    /bin/bash /home/ken/github/scripts/update_playlist.sh
done
