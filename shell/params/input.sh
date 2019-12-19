#!/usr/bin/env bash

:<<EOF
1. 读取参数

read命令  -p(提示语句) -n数字(字符个数) -t(等待时间) -s(不回显)
read -p "Input passwd:" -s Passwd     #输入不在终端显示
read -p "Input a number:" -t 5 Number #限时输入,否则退出
read -p "Input a word:" -n 5 Word     #从输入中取5个字符

bc命令
浮点数运算
    echo "scale=2;10/3" | bc
进制转换
    ibase为输入数的进制，默认为10
    obase为输出数的进制，默认为10
    echo "ibase=8;14" | bc
    echo "ibase=16;obase=8;12" | bc
EOF

:<<EOF
echo -n "请输入参数："

read number
echo "输入的参数为："${number}
EOF

while :
do
    read -p "请输入参数：" var
    if test ${var} = "quit" -o ${var} = "q" -o ${var} = "exit"; then
            break
    else
        echo "输入的参数为："${var}
    fi
done
