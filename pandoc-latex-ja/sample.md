--- 
title: pandoc-latex-jaのテスト
header-includes: 
- \usepackage{multirow}
- \usepackage{xltabular}
figureTitle: "図 "
tableTitle: "表 "
listingTitle: "コード "
figPrefix: "図."
eqnPrefix: "式."
tblPrefix: "表."
lstPrefix: "コード."
--- 

# test

test  
日本語は文字化けしない  
~~取り消し線~~

[@tbl:SOL2]にサンプル表を示す。

[@tbl:test1]にサンプル表を示す。

[@tbl:test2]にサンプル表を示す。


## 表テスト集

## 表テスト1 markdown table


| テスト | a   |
| ------ | --- |
| 43     | 43  |
| re     | d   |
| d      | d   |

: テストの表 {#tbl:test1}

## 表テスト2 latex table

\begin{table}[h]
 \label{table:SpeedOfLight}
 \centering
 \caption{\label{tbl:test2}テストの表2}
  \begin{tabular}{cp{50mm}ll}
   \hline
   西暦 & \multicolumn{3}{c}{測定者}    \\ 
    & & & $\times 10^8$ [m/sec] \\
   \hline \hline
   \multirow{2}{*}{1638} & Galileo & 二人が離れてランプの光を見る & (音速10倍以上) \\
    & Roemer & 木星の衛星の観測から & 2 \\
   1728 & Bradley & 星の収差から & 3.01 \\
   1849 & Fizeau & 高速に回転する歯車を通過する光を見る & 3.133 \\
   1862 & Foucault & 高速に回転する鏡の光の角度変化 & 2.99796 \\
   今日 & (定義) & & 2.99792458 \\
   \hline
  \end{tabular}
\end{table}

\begin{table}[h]
\caption{\label{tbl:SOL2}テストの表3}
\begin{xltabular}{\linewidth}{llXr}
\toprule
   西暦 & \multicolumn{3}{l}{測定者}    \\ 
    & & & $\times 10^8$ [m/sec] \\
\midrule
\endhead
   \multirow{2}{*}{1638} & Galileo & 二人が離れてランプの光を見る & (音速10倍以上) \\
    & Roemer & 木星の衛星の観測から & 2 \\
   1728 & Bradley & 星の収差から & 3.01 \\
   1849 & Fizeau & 高速に回転する歯車を通過する光を見る高速に回転する歯車を通過する光を見る高速に回転する歯車を通過する光を見る高速に回転する歯車を通過する光を見る高速に回転する歯車を通過する光を見る高速に回転する歯車を通過する光を見る & 3.133 \\
   1862 & Foucault & 高速に回転する鏡の光の角度変化 & 2.99796 \\
   今日 & (定義) & & 2.99792458 \\
\bottomrule
\end{xltabular}
\end{table}

```bash
$ docker run -it --volume $(pwd):/data pandoc-latex-ja:latest \
  -V classoption="pandoc" \
  -V documentclass=ltjsarticle  \
  --pdf-engine=lualatex \
  --filter=pandoc-crossref \
  -N \
  --toc \
  sample.md \
  -o ./dist/sample.pdf 

$ pandoc -V documentclass=ltjsarticle --pdf-engine=lualatex --filter=pandoc-crossref -N --toc sample.md -o ./dist/sample.pdf 
```