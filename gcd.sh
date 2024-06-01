#!/bin/bash

# 引数の数をチェック
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

# 引数を変数に代入
num1=$1
num2=$2

# 最大公約数を計算する関数
gcd() {
    local a=$1
    local b=$2
    while [ $b -ne 0 ]; do
        local r=$((a % b))
        a=$b
        b=$r
    done
    echo "$a"
}

# 最大公約数を計算して出力
result=$(gcd $num1 $num2)
#echo "The greatest common divisor of $num1 and $num2 is: $result"
echo "$result"  # 数値をそのまま出力する
