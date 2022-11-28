#!/bin/bash

file_path=$1
echo $file_path
model=$2

# $1はファイルパス。$1から.mp4を取り除いたものをファイル名とする
file_name=${file_path%.*}
ffmpeg -i $file_path -ac 2 -ar 16000 -f wav $file_name

# 失敗したらメッセージを表示して終了
if [ $? -ne 0 ]; then
    echo -e "\e[31mffmpeg failed\e[m"
    exit 1
fi

/app/bin/main -m /app/models/ggml-$model.bin -f $file_name -l ja -ovtt


rm $file_name

mv $file_name.vtt /app/results/

