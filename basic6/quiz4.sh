#!/bin/bash

# 파일명: quiz4.sh

# 그룹 quiz4group 생성
groupadd quiz4group

# /etc/group에서 quiz4group 정보 출력
grep "quiz4group" /etc/group
