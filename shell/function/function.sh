#!/usr/bin/env bash

:<<EOF
1. 定义
2. 函数参数个数 ${#}
3. 函数的第一个参数 ${1}
4. 返回值 ${?}
5. 所有参数 ${*}

EOF


function Hello() {
    echo "Hello World"
    echo "函数参数的个数" ${#}
    echo "函数参数的第一个参数" ${1}
    local number=1
    LOOP_LIMIT=${#}
    for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
        printf "%-10d %-10s\n" ${VAR} ${1}
    done

    for VAR in ${*} ; do
        printf "%-10s\n" ${VAR}
    done
}

Hello "Golang"

Hello "Python" "Golang" "Java" "C++"

function sumNumber() {
    LOOP_LIMIT=10
    SUM=0
    for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
          SUM=`expr ${SUM} + ${VAR}`
    done
    return ${SUM}
}

sumNumber
echo ${?}
