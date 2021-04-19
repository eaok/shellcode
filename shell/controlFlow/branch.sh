#!/usr/bin/env bash

:<<EOF
1. 流程控制 if else
if [[ command ]]; then
    command1
    command2
elif [[ command ]]; then
    command1
    command2
else
    command1
    command2
fi 


2. 流程控制 case esac
case 值 in
模式1)
    command1
    command2
    ;;
模式2）
    command1
    command2
    ;;
*)
    command1
    command2
    ;;
esac

EOF

#if语句
flag=0
if [[ ${SUM} -eq 45 ]];
then
    flag=0
    echo "Good Job"
elif [[ ${SUM} -lt 45 ]];
then
    flag=-1
    echo "Less Than"
elif [[ ${SUM} -gt 45 ]];
then
    flag=1
    echo "Greater Than"
fi

#case语句
case ${flag} in
    0)
        echo "Good Job"
    ;;
    1)
        echo "Greater Than"
    ;;
    -1)
        echo "Less Than"
    ;;
esac
