#!/bin/bash

# 파일명: quiz2.sh

# 사용자 testuser2 추가 (기존에 없으면 추가)


# idk
id -u testuser2 &>/dev/null || useradd -m -d /home/newhome -s /bin/bash testuser2

usermod -d /tmp testuser2

usermod -d /home/newhome -m testuser2


# 홈 디렉터리 변경

# 변경된 정보 확인
grep "testuser2" /etc/passwd
