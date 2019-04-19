#!/bin/sh
g++ -I/home/pi/ncnn/src -I/home/pi/ncnn/build/src -include"./PCN.h" -O0 -g3 -Wall -c -fmessage-length=0  -std=c++11 -MMD -MP -MF"cam.d" -MT"cam.o" -o "cam.o" "./cam.cpp"
g++ -fopenmp -o "ncnn_PCN_cam"  ./cam.o  /home/pi/ncnn/build/src/libncnn.a `pkg-config --cflags --libs opencv`
