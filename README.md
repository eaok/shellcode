ShellCode

[![Build Status](https://travis-ci.com/kcoewoys/shellcode.svg?branch=master)](https://travis-ci.com/kcoewoys/shellcode)
[![codecov](https://codecov.io/gh/kcoewoys/shellcode/branch/master/graph/badge.svg)](https://codecov.io/gh/kcoewoys/shellcode)


```
shell/
├── controlFlow
        - if
        - case
        - for
        - while
├── function
        - 函数
├── list
        - 数组
├── params
        - 参数
        - 变量
        - 运算符
├── redirection
        - 重定向
└── text
        - grep
        - awk
        - sed
```



[toc]

# Shell 使用规范

## shebang

```bash
#!/usr/bin/env bash
#!/bin/bash
```

## 命名

- 变量
```bash
小写, 赋值=左右没有空格
list=(1 2 3 4)


引用 ${#list[@]}
```
- 函数

```bash
# 首字母大写，驼峰式

function Remove(){
    echo "Remove"
}
# 显式的写出 function 定义函数

# 局部变量使用 local
```
- 环境变量

```bash
大写
```

- 常量 
```bash
readonly USER
```


## 内置命令

内置命令使用下文的两种方式。

```bash
`type mkdir`
$(type mkdir) // 建议使用这种, 可以执行命令且可以将结果赋值给变量
```

## 判断

使用双 `[]` 号
```bash
if [[ -e a ]]; then
    echo ""
fi
```



# Shell特殊变量

| 变量 | 含义                                                         |
| ---- | ------------------------------------------------------------ |
| $0   | 当前脚本的文件名                                             |
| $n   | 传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。 |
| $#   | 传递给脚本或函数的参数个数。                                 |
| $*   | 传递给脚本或函数的所有参数。                                 |
| $@   | 传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同。 |
| $?   | 上个命令的退出状态，或函数的返回值。                         |
| $$   | 当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。 |



# Shell条件判断

数值判断

| 运算符 | 描述       | 示例             |
| ------ | ---------- | ---------------- |
| -eq    | 等于       | [ 3 -eq $mynum ] |
| -ne    | 不等于     |                  |
| -lt    | 小于       |                  |
| -le    | 小于或等于 |                  |
| -gt    | 大于       |                  |
| -ge    | 大于或等于 |                  |



字符串判断

| 运算符 | 描述                            | 示例                            |
| ------ | ------------------------------- | ------------------------------- |
| -z     | string 长度为零，则为真         | [ -z "$myvar" ]                 |
| -n     | string 长度非零，则为真         |                                 |
| =      | string1 与 string2 相同，则为真 |                                 |
| !=     | string1 与 string2 不同，则为真 | [ "$myvar" != "one two three" ] |
|        |                                 |                                 |



文件/文件夹(目录)判断

| 运算符 | 描述                             | 示例                                         |
| ------ | -------------------------------- | -------------------------------------------- |
| -e     | filename存在，则为真             | [ -e /var/log/syslog ]                       |
| -d     | filename为目录，则为真           | [ -d /tmp/mydir ]                            |
| -f     | filename为常规文件，则为真       |                                              |
| -L     | filename可读，则为真             |                                              |
| -r     | filename可读，则为真             |                                              |
| -w     | filename可写，则为真             |                                              |
| -x     | filename可执行，则为真           |                                              |
| -nt    | filename1 比 filename2新，则为真 | [ /boot/bzImage -nt arch/i386/boot/bzImage ] |
| -ot    | filename1 比 filename2旧，则为真 |                                              |



逻辑判断

| 运算符 | 描述 | 示例 |
| ------ | ---- | ---- |
| -a     | 与   |      |
| -o     | 或   |      |
| !      | 非   |      |



例子1：如果a>b且a<c

```shell
if (( a > b )) && (( a < c ))
#或者
if [[ $a > $b ]] && [[ $a < $c ]]
#或者
if [ $a -gt $b -a $a -lt $c ] 
```



例子2：如果a>b或a<c

```shell
if (( a > b )) || (( a < c ))
#或者
if [[ $a > $b ]] || [[ $a < $c ]]
#或者
if [ $a -gt $b -o $a -lt $c ] 
```



例子3：逻辑判断

```shell
#!/usr/bin/env bash

var1="1"
var2="2"

if test $var1 = "1" -a $var2 = "2" ; then
   echo "equal"
fi

if test $var1 != "1" -o $var2 != "3" ; then
   echo "not equal"
fi

if ! test $var1 != "1"; then
   echo "not 1"
fi
```



[], test, [[]], (()), let

* "["是一条命令， 与test等价，在命令行里test expr和[ expr ]的效果相同。

* "[[]]"是关键字， 相比与"[]"支持数字运算；支持字符串的模式匹配，如`[[ hello == hell? ]]`为真；逻辑组合可以不使用test的-a,-o而使用&& ||；

* let和(())，基本上是一样的，主要进行算术运算，也比较适合进行整数比较，可以直接使用熟悉的<,>等比较运算符，其中运算时可以直接使用变量名而不需要加$符号；