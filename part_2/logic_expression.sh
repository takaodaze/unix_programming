#! /bin/sh

# この記述で簡単に if 構造を表現できる！便利。
# ただ、少しチャラい書き方な気がする
[ -f hoge.txt ] && echo "true" || echo "false"
