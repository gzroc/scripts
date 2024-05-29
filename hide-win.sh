#!/usr/bin/env python3

import time
import os

while True:
    time.sleep(5)
    exist = os.popen("ps -ef | grep WeChat.exe")
    e = exist.readlines()
    if len(e) < 3:
        print(e)
        print("WeChat not started. Exit...")
        exit()
    output = os.popen("wmctrl -l -G -p -x")
    s = output.readlines()
    print(s)
    id = ''
    for item in s:
        if item.find("wechat.exe.Wine") != -1:
            id = item.split()[0]
            break
    output.close()
    print(id)
    if id != '':
        shadow = id[:-4] + "0014"
        print(shadow)
        os.system("xdotool windowunmap " + shadow)
    else:
        print("WeChat not display yet.")
