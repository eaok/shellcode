#!/usr/bin/env bash

:<<EOF
1. 对文本操作: 搜索
    - E: regex
    - v: invert
    - c: count
    - i: ignore case
    - e: 多个
    - l: list
    - n: number

配合正则表达式
.
*
\{n,m\}
^
$
[]
\
\d
\w
\W
\D
EOF

cat text.txt | grep '兼'

cat text_en.txt | grep -E "^az.*?a$"

cat text_en.txt | grep -v "^[a,b]"

cat text_en.txt | grep -c "兼"
cat text.txt | grep -c "兼"

grep '兼' -n text_en.txt text.txt
grep '兼' -l text_en.txt text.txt


echo "hello Golang" | grep -i 'g'

cat text_en.txt | grep -e "bhan" -e "bhandari"


cat text_en.txt | grep -o  "^[a-z]" | wc -l
