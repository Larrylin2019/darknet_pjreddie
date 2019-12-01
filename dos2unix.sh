#!/bin/bash
echo "Converting dos to unix"
awk '{ sub("\r$", ""); print }' train.win > train.unix
awk '{ sub("\r$", ""); print }' val.win > val.unix
echo "Done"
chmod +x *.unix
