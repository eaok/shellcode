#!/usr/bin/env bash

:<<EOF
1. 变量
2. 长度
3. 拼接
4. 截取
EOF

paramOne="Hello"
paramTwo="World"

lengthForParamOne=${#paramOne}
lengthForParamTwo=${#paramTwo}

echo ${lengthForParamOne}
echo ${lengthForParamTwo}

paramThree=${paramOne}${paramTwo}
echo ${paramThree}

printf "%-10s %-10s %-10s\n" 参数 长度 截取
printf "%-10s %-10s %-10s\n" ${paramOne} ${lengthForParamOne} ${paramOne:0:2}
printf "%-10s %-10s %-10s\n" ${paramTwo} ${lengthForParamTwo} ${paramTwo:0:2}
printf "%-10s %-10s %-10s\n" ${paramThree} ${#paramThree} ${paramThree:0:2}
