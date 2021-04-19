#!/usr/bin/env bash

:<<EOF
1. 遍历 for
2. 流程控制 while

EOF

#for循环
LOOP_LIMIT=10
SUM=0
for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
     SUM=`expr ${SUM} + ${VAR}`
done

for VAR in `ls ${dir}`; do
    echo ${VAR}
done

echo ${SUM}

#while循环
while :
do
    read var
    if test ${var} = "quit" -o ${var} = "q" -o ${var} = "exit"; then
            break
    else
        echo "输入的参数为："${var}
    fi
done
