#!/bin/bash

file="quiz3-2.sh"

if [ -s "$file" ]; then
    echo "파일이 존재하며 비어있는 파일이 아닙니다."
else
    echo "파일이 존재하지 않거나 비어있는 파일입니다."
fi
