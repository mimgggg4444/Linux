#!/bin/bash

# 파일명: quiz2.sh

# 사용자 testuser2 추가 (기존에 없으면 추가)
id -u testuser2 &>/dev/null || useradd testuser2

# 홈 디렉터리 변경
usermod -d /home/newhome -m testuser2

# 변경된 정보 확인
grep "testuser2" /etc/passwd
