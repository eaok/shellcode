#!/usr/bin/env bash

:<<EOF
1. 全称:stream editor
   按行为单位,对文本进行替换\新增\选取
2. 文本替换:
    - s/pattern/replace/g 全局替换并打印
    - i 替换原内容
    - i.bak 替换原内容并备份
    - /^$/d 移除空白行
    - & 匹配到的原内容

    -d 删除
    -p print
    -s search and replace
    -e editor == ";"

    $表示末行

EOF

echo "Hello Python Python" | sed 's/Python/Golang/'
echo "Hello Python Python" | sed 's/Python/Golang/g'


count=`cat text.txt | grep -c -E '^本.*?'`
if [[ ${count} -ge 1 ]];
then
    echo ${count}
    sed -i.bak  -e 's/^本./超级😡|&/g' -e '/^$/d' text.txt
fi


#添加新行
sed -e 4a\G text_num.txt        #在第4行后添加新行
sed -e '4a G' text_num.txt
sed -e '4a G\nG' text_num.txt
sed -e '4i G' text_num.txt      #在第4行前添加新行

#删除行
sed '2,5d' text_num.txt
sed '3,$d' text_num.txt
sed '$d' text_num.txt           #删除最后一行

#打印指定行
sed -n '1p' text_num.txt
sed -n '1,3p' text_num.txt      #打印1到3行
sed -n '/^7.*/p' text_num.txt

#搜索替换
sed 's/7/8/g' text_num.txt


# insert
#sed -i '.bak' '/^$/d' tex_num.txt
sed -i.bak '/^$/d' text_num.txt

