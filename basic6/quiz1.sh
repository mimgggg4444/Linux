#!/bin/bash

# 파일명: quiz1.sh

# 새 사용자 testuser1 추가
# useradd testuser2

# /etc/passwd에서 testuser1 정보 출력
# grep "testuser2" /etc/passwd


adduser --home /home/testuser1 testuser1
tail -1 /etc/passwd
