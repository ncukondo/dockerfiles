--- 
title: pandoc-latex-jaのテスト
--- 

# test

test  
日本語は文字化けしない  
test  

[@tbl:test1]にサンプル表を示す。

| テスト | a   |
| ------ | --- |
| 43     | 43  |
| re     | d   |
| d      | d   |

: テストの表 {#tbl:test1}

docker run -it --volume $(pwd):/data pandoc-latex-ja:latest sample.md -o sample.pdf -V classoption="pandoc" -V documentclass=bxjsarticle --pdf-engine=xelatex --filter=pandoc-crossref