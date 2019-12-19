#!/usr/bin/env bash

# 命令行传入参数和变量

:<<EOF
1. 参数
2. 变量
3. 输出
notice: 变量不能有空格
EOF

fileName=${0}
firstParam=${1}


echo "start execute command"
echo ${fileName} : ${firstParam}

echo 参数的个数 ${#}

echo ${2} ${3}
printf "%s\t%s\n" 文件名称 参数
printf "%s\t%s\n" ${fileName} ${firstParam}
