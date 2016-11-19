#!/bin/sh
xargo build --example $1
arm-none-eabi-objcopy -O binary target/thumbv7em-none-eabihf/debug/examples/$1 target/thumbv7em-none-eabihf/debug/examples/$1.bin
sudo ../lm4tools/lm4flash/lm4flash target/thumbv7em-none-eabihf/debug/examples/$1.bin
