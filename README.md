# ShellCode
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


# Shell 使用规范

## shebang

```bash
#!/usr/bin/bash/env bash

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
