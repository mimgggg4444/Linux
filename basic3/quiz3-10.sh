#!/bin/bash

# 파일 수와 디렉토리 수를 초기화
file_count=0
dir_count=0

# 현재 디렉토리 내의 모든 파일과 디렉토리를 반복하여 확인
for item in *; do
    if [ -f "$item" ]; then
        # 파일인 경우 파일 수를 증가
#        ((file_count + 1))
	file_count=$((file_count + 1))
    elif [ -d "$item" ]; then
        # 디렉토리인 경우 디렉토리 수를 증가
#        ((dir_count++))
	dir_count=$((fir_count + 1))

    fi
done

# 결과 출력
echo "파일 수: $file_count"
echo "디렉토리 수: $dir_count"
