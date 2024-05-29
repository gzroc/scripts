#!/bin/bash

while true; do
    read -s -n 1 key

    case "$key" in
        "Return")
            # 替换为蓝牙遥控器的 Return 键对应的键码
            mpc toggle  # 切换播放/暂停状态
            ;;

        # 添加其他按键映射...

        *)
            # 未映射的按键
            ;;
    esac
done

