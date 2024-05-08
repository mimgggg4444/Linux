#!/bin/bash

# 파일명: quiz5.sh

# 그룹 mygroup 존재 확인, 없으면 생성
# getent group mygroup &>/dev/null || groupadd mygroup

# 사용자 testuser4 추가 (기존에 없으면 추가)
#id -u testuser4 &>/dev/null || useradd testuser4

# testuser4를 mygroup에 추가
#usermod -a -G mygroup testuser4

gpasswd -a testuser4 mygroup
# mygroup 정보 확인
grep "mygroup" /etc/group
