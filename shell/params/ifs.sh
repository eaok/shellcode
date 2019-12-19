#!/usr/bin/env bash

:<<EOF
IFS(Internal Field Seprator) 内部域分隔符
当"命令替换"和"参数替换"时，shell 根据 IFS 的值，默认是 space, tab, newline 来拆解读入的变量
EOF

data=("golang","java","python")
echo ${IFS}
echo ${IFS}|od -b #直接输出IFS是看不到值的，可以转为二进制看

OLD_IFS=${IFS}
IFS=","

for i in ${data[@]};
do
    echo ${i}
done

IFS=${OLD_IFS}
