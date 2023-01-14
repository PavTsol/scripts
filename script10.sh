#!/bin/bash

mkdir -p site/{css,js,img,posts}

touch site/index.html
touch site/css/style.css
touch site/js/main.js

for file in site/posts/*.md; do
  filename="${file%.*}"
  pandoc $file -o $filename.html
done
