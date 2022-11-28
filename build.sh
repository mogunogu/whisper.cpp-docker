#!/bin/bash

cmake . -DWHISPER_SUPPORT_SDL2=ON -DCMAKE_BUILD_TYPE=Release
# 失敗したらメッセージを表示して終了
if [ $? -ne 0 ]; then
    echo -e "\e[31mmake failed\e[m"
    exit 1
fi
echo -e "\e[32mcmake success\e[m"

make
# 失敗したらメッセージを表示して終了
if [ $? -ne 0 ]; then
    echo -e "\e[31mmake failed\e[m"
    exit 1
fi

echo -e "\e[32mmake success\e[m"
echo -e "\e[32mBuild success\e[m"

mkdir /app/resources

mkdir /app/results

mkdir /app/tmp

echo "done"


echo "モデルDL例）bash ./models/download-ggml-model.sh small"
echo "コマンド実行例）sh run.sh {{ 動画ファイルのフルパス }} {{ モデル名 }}"

