# 構築手順

## dockerビルド

`docker build -t whisper .`

## docker起動

`docker run -it -v $(pwd):/app whisper`

## dockerに接続

`docker exec -it <container id> /bin/bash`

## ビルド

※ 最初の一回だけ実行

`cd /app`

`sh build.sh`

## モデルのDL

`bash ./models/download-ggml-model.sh small`

## 実行

`sh run.sh <video file path> <model name>`


※ ビルドからはdockerに接続して実行してください。