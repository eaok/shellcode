#!/usr/bin/env bash

:<<EOF
分析数据处理: 列

$0  当前行
$1  第一段
$NF 最后一个字段
${NF-1}
NF: 当前又多少个字段
NR: 当前处理的行
-F  指定分隔符

FILENAME    当前文件名
FS          字段分隔符，默认为空格和制表符
RS          行分隔符，默认为换行符
OFS         输出字段的分隔符，默认为空格
ORS         输出记录的分隔符，默认为换行符
OFMT        数字输出的格式，默认为%.6g

内置函数
    toupper()
    tolower()
    length()
    substr()
    rand()
EOF


#打印匹配到的行
#awk '/home/' passwd
#sed -n '/home/p' passwd
#grep -E 'home' passwd

#变量
#awk -F ':' '{print NF}' passwd  #当前行的字段数
#awk -F ':' '{print $1}' passwd  #当前行的第一个字段
#awk -F ':' '{print $NF}' passwd  #当前行的最后一个字段
#awk -F ':' '{print NR") " $1, $(NF-1)}' passwd #当前行的行数，第一段和倒数第二个字段

#函数
#awk -F ':' '{ print toupper($1) }' passwd

#if语句 
#awk '{if(NR==1) print $1}' passwd           #打印第一行
#awk '{if(NR>1 && NR<4) print $1}' passwd    #打印2到3行
#awk -F ':' '{if ($1 > "r") print $1}' passwd
#awk -F ':' '{if ($1 > "r") print $1; else print "---"}' passwd

# begin 、end
#cat /etc/passwd | awk -F: 'BEGIN{print "name, shell"} {print $1,$NF} END{print "hello  world"}'

#条件
#awk '条件 动作' 文件名
awk -F ':' '/usr/ {print $1}' passwd        #输出包含usr的行
awk -F ':' 'NR % 2 == 1 {print $1}' passwd  #输出奇数行
awk -F ':' 'NR >3 {print $1}' passwd        #输出第三行以后的行


:<<EOF
b,4|0
d,3.75&0
k,4|10
m,5,20
EOF
#awk -F '[,|&]' '$3>0 {print $3, $2 * $3}' example.csv
#awk -F '[,|&]' '{if($3>0) print $3, $2 * $3}' example.csv

