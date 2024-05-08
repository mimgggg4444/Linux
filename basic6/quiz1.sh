#!/bin/bash

# 파일명: quiz1.sh

# 새 사용자 testuser1 추가
useradd testuser1

# /etc/passwd에서 testuser1 정보 출력
grep "testuser1" /etc/passwd
