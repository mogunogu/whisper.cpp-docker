#!/bin/bash

# resourcesの中にあるファイルを全て取得
files=($(find /app/tmp -type f))

# ファイルの数だけループ
for file in ${files[@]}; do
# tmpディレクトリからresourcesディレクトリに移動
mv $file /app/resources

# ファイル名を取得
file_name=${file##*/}

# run.shを実行
/app/run.sh /app/resources/$file_name small

# 何か失敗したらメッセージを表示して終了
if [ $? -ne 0 ]; then
    echo -e "\e[31mrun.sh failed\e[m"
    exit 1
fi

done