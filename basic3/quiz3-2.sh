#!/bin/bash

file="quiz3-1.sh"

if [ -d "$file" ]; then
    echo "이것은 디렉토리입니다."
else
    echo "디렉토리가 아닙니다."
fi
