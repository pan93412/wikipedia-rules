#!/usr/bin/bash
# 將 wikipedia-zh 的規定轉換成 zh_CN。

files=(
    "wikipedia-zh-game-rules.html"
)

converter() {
   filename="${1%.*}-cn.${1##*.}"
   cp "$1" "$filename"
   sed -i -e "s/lang='zh_TW'/lang='zh_CN'/g" "$filename"
}

converter ${files[0]}
