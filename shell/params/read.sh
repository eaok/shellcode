#!/usr/bin/env bash

:<<EOF
read 读取字符

EOF

read -s -n 2 varOne
echo ${varOne}

read -d "|" var
echo ${var}

