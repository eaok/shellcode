#!/usr/bin/env bash

:<<EOF
1. 数组声明
2. 数组索引
3. 数组长度
4. 遍历数组
EOF

paramOne="Hello_World"
paramList=(1 2 "A" ${paramOne} ${paramOne}"_Golang")

printf "%-20s %-10s\n" 参数 长度
printf "%-20s %-10s\n" ${paramOne} ${#paramOne}
printf "%-20s %-10s\n" ${paramList[0]} ${#paramList[0]}
printf "%-20s %-10s\n" ${paramList[1]} ${#paramList[1]}
printf "%-20s %-10s\n" ${paramList[2]} ${#paramList[2]}
printf "%-20s %-10s\n" ${paramList[3]} ${#paramList[3]}
printf "%-20s %-10s\n" ${paramList[4]} ${#paramList[4]}

paramList+=("python")
echo ${paramList[*]}
echo ${paramList[@]}

for var in ${paramList[*]} ; do
    echo ${var}
done

for (( i = 0; i < ${#paramList[*]}; ++i )); do
    echo ${paramList[i]}
done

for VAR in `ls ../params` ; do
    echo ${VAR}
done

echo `pwd`

