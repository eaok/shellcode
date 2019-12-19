#!/usr/bin/env bash

:<<EOF
EOF: end of file
1. stdin : 0
2. stdout: 1
3. stderr: 2

EOF


echo "Hello World" > one.txt

echo "Hello Python" >> two.txt

if [[ -f "three.txt" ]];
then
    rm three.txt
fi

echo "Hello Golang" > three.txt

ls + 0> stdinout.txt
ls  1> stdoutout.txt
ls + 2> stderrout.txt

data="1,2,3,4"
IFS=","
for VAR in ${data} ; do
    echo ${VAR}
done

