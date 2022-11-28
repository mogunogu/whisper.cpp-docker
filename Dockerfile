FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    git \
    curl\
    ffmpeg


RUN apt-get update

RUN apt-get install -y cmake \
    libsdl2-dev

