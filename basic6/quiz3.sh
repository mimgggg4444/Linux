#!/bin/bash

# 파일명: quiz3.sh

# 사용자 testuser2 삭제
#userdel testuser2

# /etc/passwd 파일에서 testuser2 정보 확인
#grep "testuser2" /etc/passwd || echo "User testuser2 not found"


userdel testuser2
grep "testuser2" /etc/passwd || echo "User testuser2 not found"
