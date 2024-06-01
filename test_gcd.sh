#!/bin/bash

# 最大公約数を求めるスクリプトのパス
gcd_script="./gcd.sh"

# テスト関数
test_gcd() {
    local input="$1"
    local expected_output="$2"
    local test_name="$3"

    echo -n "Testing $test_name... "

    # 最大公約数を計算
    result=$("$gcd_script" $input)

    # 期待する結果と一致するか確認
    if [ "$result" -eq "$expected_output" ]; then
        echo "Passed"
    else
        echo "Failed: Expected $expected_output but got $result"
        exit 1
    fi
}

# テストケースを実行
test_gcd "2 4" 2 "gcd of 2 and 4 is 2"
test_gcd "3 6" 3 "gcd of 3 and 6 is 3"
test_gcd "8 12" 4 "gcd of 8 and 12 is 4"
test_gcd "17 23" 1 "gcd of 17 and 23 is 1"
test_gcd "0 5" 5 "gcd of 0 and 5 is 5"
test_gcd "10 0" 10 "gcd of 10 and 0 is 10"
test_gcd "100 100" 100 "gcd of 100 and 100 is 100"
test_gcd "1000 500" 500 "gcd of 1000 and 500 is 500"
#test_gcd "abc def" "" "non-numeric input"

