--- 
title: pandoc-latex-jaのテスト
header-includes: 
- \usepackage{multirow}
- \usepackage{xltabular}
- \usepackage{longtable}
- \usepackage{ltablex}
- \usepackage{luatexja-fontspec}
- \setmainfont[Ligatures=TeX]{BIZ UDGothic}
- \setmainjfont[BoldFont=BIZ UDGothic]{BIZ UDGothic}
- \setsansjfont{BIZ UDGothic}
figureTitle: "図 "
tableTitle: "表 "
listingTitle: "コード "
figPrefix: "図."
eqnPrefix: "式."
tblPrefix: "表."
lstPrefix: "コード."
--- 

\captionsetup{labelformat=empty,labelsep=none}

# test

test  
日本語は文字化け[^2]しない  
~~取り消し線~~

[@tbl:SOL2]にサンプル表を示す。

[@tbl:test1]にサンプル表[^1]を示す。

[@tbl:test2]にサンプル表を示す。\hyperref[tbl:test2]{サンプル表}	


[^1]: sample
[^2]: ttteessstt

## 表テスト集

## 表テスト1 markdown table


| テスト | a   |
| ------ | --- |
| 43     | 434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343  |
| re     | d   |

: テストの表 {#tbl:test1}

## 表テスト2 latex table

\begin{table}[h!]
\label{table:SpeedOfLight}
\centering
\label{tbl:test2}
\caption{テストの表2}
\caption*{表の解説}
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



\begin{xltabular}{\linewidth}{llX}
\caption{\label{tbl:organ}臓器別知識} \\
\toprule
臓器 & 分類 & 項目名 \\
\midrule
\endhead
血液・造血器・リンパ系 & 構造と機能 & 骨髄の構造 \\
 &  & 造血幹細胞から各血球への分化と成熟の過程 \\
 &  & 主な造血因子（エリスロポエチン、顆粒球コロニー刺激因子<G-CSF>、トロンボポエチン） \\
 &  & 脾臓、胸腺、リンパ節、扁桃とPeyer 板の構造と機能 \\
 &  & 血漿タンパク質の種類と機能 \\
 &  & 赤血球とヘモグロビンの構造と機能 \\
 &  & 白血球の種類と機能 \\
 &  & 血小板の機能と止血や凝固・線溶の機序 \\
 & 症候 & 発熱 \\
 &  & 全身倦怠感 \\
 &  & 黄疸 \\
 &  & リンパ節腫脹 \\
 &  & 貧血 \\
 &  & 出血傾向 \\
 &  & 血栓傾向 \\
 & 検査方法 & 末梢血塗抹 \\
 &  & 凝固・線溶・血小板機能検査 \\
 &  & 骨髄検査（骨髄穿刺、骨髄生検） \\
 &  & 輸血関連検査 \\
 &  & タンパク分画、免疫電気泳動 \\
 &  & 遺伝子・染色体検査 \\
 & 特異的治療法 & 輸血 \\
 &  & 造血幹細胞移植 \\
 & 疾患・病態 & 貧血：鉄欠乏性貧血、二次性貧血（慢性疾患に伴う貧血）、造血不全症（発作性夜間ヘモグロビン尿症・再生不良性貧血・赤芽球癆*・骨髄異形成症候群）、溶血性貧血（自己免疫性・薬剤誘発性）、出血性貧血、腎性貧血、巨赤芽球性貧血（ビタミンB12欠乏性貧血・葉酸欠乏性貧血）、遺伝性貧血（サラセミア・遺伝性球状赤血球症・鎌状赤血球症） \\
 &  & 出血傾向：免疫性血小板減少性紫斑病<ITP>、二次性血小板減少症（脾機能亢進症・薬剤性）、血友病、播種性血管内凝固<DIC>、溶血性尿毒症症候群<HUS>、➅血栓性血小板減少性紫斑病<TTP>、ビタミンK欠乏症、von Willebrand病 \\
 &  & 血栓傾向：プロテインC・プロテインS・アンチトロンビン欠乏症、抗リン脂質抗体症候群、TTP、HUS、DIC \\
 &  & 腫瘍性疾患：急性骨髄性白血病、急性リンパ性白血病、骨髄増殖性疾患（慢性骨髄性白血病・真性赤血球増加症・本態性血小板血症・原発性骨髄線維症）、慢性リンパ性白血病、リンパ増殖性疾患、成人T 細胞白血病、悪性リンパ腫（Hodgkinリンパ腫・濾胞性リンパ腫・びまん性大細胞型B細胞リンパ腫・末梢T細胞性リンパ腫・Burkittリンパ腫・MALTリンパ腫）、多発性骨髄腫、マクログロブリン血症、意義不明の単クローン性免疫グロブリン症〈MGUS〉　※腫瘍の項目にも掲載 \\
 &  & その他の重要な造血系疾患：無顆粒球症、血球貪食症候群（血球貪食性リンパ組織球症）、移植片対宿主病<GVHD> \\
神経系 & 構造と機能 & 中枢神経系と末梢神経系の構成 \\
 &  & 脳の血管支配と血液脳関門 \\
 &  & 脳のエネルギー代謝の特徴 \\
 &  & 主な脳内神経伝達物質（アセチルコリン・ドパミン・ノルアドレナリン）とその作用 \\
 &  & 髄膜・脳室系の構造と脳脊髄液の産生と循環 \\
 &  & 脊髄の構造、機能局在と伝導路 \\
 &  & 脊髄反射（伸張反射、屈筋反射）と筋の相反神経支配 \\
 &  & 脊髄神経と神経叢（頸・腕・腰仙骨）の構成および主な骨格筋支配と皮膚分布（デルマトーム） \\
 &  & 脳幹の構造と機能、および伝導路 \\
 &  & 脳神経の名称、核の局在、走行・分布と機能 \\
 &  & 大脳の構造と大脳皮質の機能局在（運動野・感覚野・言語野） \\
 &  & 辺縁系の構造と記憶・学習の機序との関連 \\
 &  & 錐体路を中心とした随意運動の発現機構 \\
 &  & 小脳の構造と機能 \\
 &  & 大脳基底核（線条体・淡蒼球・黒質）の線維結合と機能 \\
 &  & 痛覚、温度覚、触覚と深部感覚の受容機序と伝導路 \\
 &  & 視覚、聴覚・平衡覚、嗅覚、味覚の受容機序と伝導路 \\
 &  & 交感神経系と副交感神経系の中枢内局在、末梢分布、機能と伝達物質 \\
 &  & 内分泌および自律機能と関連づけた視床下部の構造と機能 \\
 &  & ストレス反応と本能・情動行動の発現機序 \\
 & 症候 & 頭痛 \\
 &  & めまい \\
 &  & けいれん \\
 &  & 意識障害 \\
 &  & 運動麻痺・筋力低下 \\
 &  & 歩行障害 \\
 &  & 感覚障害 \\
 &  & 認知障害 \\
 &  & 失語症・構音障害 \\
 &  & 振戦 \\
 &  & 小脳性・前庭性・感覚性運動失調障害 \\
 &  & 不随意運動（ミオクローヌス・舞踏運動・ジストニア・固定姿勢保持困難・アテトーシス・チック） \\
 &  & 頭蓋内圧亢進（急性・慢性） \\
 &  & 脳ヘルニア \\
 & 検査方法 & 脳・脊髄の画像検査（CT・MRI） \\
 &  & 神経系の電気生理学的検査(脳波検査、針筋電図検査、末梢神経伝導検査） \\
 & 特異的治療法 & 脳血管障害の急性期治療とリハビリテーション医療 \\
 & 疾患・病態 & 脳血管障害：脳出血、くも膜下出血、頭蓋内血腫、脳梗塞、一過性脳虚血発作、脳動脈瘤、脳動静脈奇形、もやもや病 \\
 &  & 感染性・炎症性疾患・脱髄性疾患：脳炎・髄膜炎、脳症、脳膿瘍、多発性硬化症 \\
 &  & 認知症と変性疾患：認知症（Alzheimer型・Lewy小体型・脳血管性）、Parkinson病、筋萎縮性側索硬化症、多系統萎縮症 \\
 &  & 末梢神経・神経 筋接合部・筋疾患：ニューロパチー（栄養障害・中毒・遺伝性）、Guillain-Barré症候群、顔面神経麻痺（Bell麻痺を含む）、反回神経麻痺、主な神経痛（三叉・坐骨神経痛）、重症筋無力症、進行性筋ジストロフィー、周期性四肢麻痺 \\
 &  & 発作性・機能性・自律神経系疾患：全般てんかん、局在関連てんかん、慢性頭痛（片頭痛・緊張型頭痛） \\
 &  & 頭部外傷：脳挫傷、脳震盪、びまん性軸索損傷、急性硬膜外血腫、硬膜下血腫（急性・慢性）、頭蓋骨骨折、頭部外傷後の高次機能障害 \\
 &  & 小児領域：熱性けいれん、脳性麻痺、水頭症 \\
 &  & 腫瘍性疾患：　※腫瘍の項目を参照 \\
皮膚系 & 構造と機能 & 皮膚の組織構造 \\
 &  & 皮膚の細胞動態と角化の機構 \\
 &  & 皮膚の免疫防御能 \\
 & 症候 & 皮疹（紅斑・紫斑・色素斑・丘疹・結節・腫瘤・水疱・膿疱・嚢腫・びらん・潰瘍・毛細血管拡張・硬化・瘢痕・萎縮・鱗屑・痂皮・苔癬化・壊疽） \\
 &  & そう痒 \\
 &  & 粘膜疹 \\
 &  & 脱毛 \\
 & 検査方法 & 皮膚検査法（硝子圧法・皮膚描記法(Darier 徴候)・Nikolsky 現象・Tzanck 試験・光線テスト） \\
 &  & 皮膚アレルギー検査法（プリックテスト・皮内テスト・パッチテスト） \\
 &  & 微生物検査法（検体採取法・苛性カリ<KOH>直接検鏡法） \\
 &  & ダーモスコピー \\
 & 特異的治療法 & 外用療法 \\
 &  & 凍結療法 \\
 &  & 光線療法（PUVA療法） \\
 & 疾患・病態 & 湿疹・皮膚炎：湿疹反応（湿疹三角）、接触皮膚炎、アトピー性皮膚炎、脂漏性皮膚炎、貨幣状湿疹、皮脂欠乏性湿疹、自家感作性皮膚炎、うっ滞性皮膚炎） \\
 &  & 蕁麻疹、紅斑症、紅皮症と皮膚そう痒症：蕁麻疹、血管性浮腫、多形滲出性紅斑、結節性紅斑、環状紅斑、紅皮症、皮膚そう痒症 \\
 &  & 紫斑・皮膚血流障害：紫斑（単純性・老人性）、皮膚血流障害（血栓性静脈炎・網状皮斑） \\
 &  & 薬疹・薬物障害：固定薬疹、Stevens-Johnson症候群、中毒性表皮壊死症（TEN）、薬剤性過敏症症候群（DIHS） \\
 &  & 水疱症と膿疱：自己免疫性水疱症（天疱瘡・水疱性類天疱瘡）、膿疱症（掌蹠膿疱症・膿疱性乾癬） \\
 &  & 乾癬と角化症：尋常性乾癬、扁平苔癬、Gibert 薔薇色粃糠疹、魚鱗癬脂漏性角化症 \\
 &  & 皮膚感染症：伝染性膿痂疹、せつ・癰、毛嚢炎、ひょう疽、丹毒、ブドウ球菌性熱傷様皮膚症候群、蜂窩織炎、壊死性筋膜炎、皮膚真菌症（表在性・深在性）、皮膚抗酸菌症、疥癬、皮膚ウィルス感染症（単純ヘルペス・帯状疱疹・尋常性疣贅・伝染性軟属腫・麻疹・風疹・水痘・伝染性紅斑・手足口病）、後天性免疫不全症候群<AIDS>に伴う皮膚症状（梅毒・難治性ヘルペス・伝染性軟属腫・カポジ肉腫など） \\
 &  & 母斑性皮膚疾患：母斑、母斑症（神経線維腫症1型・結節性硬化症） \\
 &  & 付属器疾患：毛の疾患（円形脱毛症・男性型脱毛症）、爪の疾患（匙状爪・嵌入爪）、汗腺の疾患（汗疹・多汗症・無汗症） \\
 &  & その他：尋常性痤瘡、酒皶様皮膚炎、褥瘡、ケロイド、粉瘤、尋常性白斑、壊疽性膿皮症、痒疹、色素性乾皮症 \\
 &  & 腫瘍性疾患：※腫瘍の項目を参照 \\
 &  & 凍傷・電撃傷を別カテゴリーで設けてください。 \\
運動器（筋骨格）系 & 構造と機能 & 骨・軟骨・関節・靱帯の構成と機能 \\
 &  & 頭頸部の構成 \\
 &  & 脊柱の構成と機能 \\
 &  & 四肢の骨格、主要筋群の運動と神経支配 \\
 &  & 骨盤の構成と性差 \\
 &  & 骨の成長と骨形成・吸収の機序 \\
 &  & 姿勢と体幹の運動にかかわる筋群 \\
 &  & 抗重力筋 \\
 & 症候 & 運動麻痺・筋力低下 \\
 &  & 関節痛・関節腫脹 \\
 &  & 腰背部痛 \\
 &  & 歩行障害 \\
 &  & 感覚障害 \\
 & 検査方法 & 筋骨格系の病態に即した徒手検査（四肢と脊柱の可動域検査・神経学的検査等） \\
 &  & 筋骨格系画像診断（単純エックス線撮影・CT・MRI・超音波検査・骨塩定量） \\
 &  & 関節液検査 \\
 & 特異的治療法 & 運動器疾患のリハビリテーション \\
 &  & 捻挫・骨折・脱臼の治療・処置 \\
 & 疾患・病態 & 四肢・脊椎外傷 \\
 &  & 関節の脱臼、肘内障、腱・靱帯・半月板損傷 \\
 &  & 関節拘縮、Dupuytren拘縮 \\
 &  & 骨折 \\
 &  & 筋損傷・挫滅症候群・コンパートメント症候群 \\
 &  & 代謝性骨疾患（骨粗鬆症・くる病・骨軟化症） \\
 &  & 関節炎、腱鞘炎、滑液包炎、腱付着部炎 \\
 &  & 関節症（変形性関節症・外反母趾・外反膝・内反膝・反張膝・神経病性関節症） \\
 &  & 絞扼性末梢神経障害（胸郭出口症候群・手根管症候群・肘部管症候群等） \\
 &  & 脊椎症・脊髄症・神経根症（脊柱靭帯骨化症を含む） \\
 &  & 脊髄損傷 \\
 &  & 脊椎椎間板ヘルニア \\
 &  & 脊柱管狭窄症 \\
 &  & 脊椎分離・すべり症 \\
 &  & 運動器慢性疼痛（腰背部痛・頸部痛・肩こり・肩関節周囲炎） \\
 &  & 感染性疾患（化膿性関節炎・骨髄炎） \\
 &  & 椎間板炎・化膿性脊椎炎・脊椎カリエス \\
 &  & 先天性疾患（斜頸・側弯症・先天性股関節脱臼・内反足・骨形成不全症） \\
 &  & 骨壊死・骨端症・軟骨の障害（特発性大腿骨頭壊死症・Perthes病・Osgood-Schlatter病・離断性骨軟骨炎・膝蓋軟骨軟化症） \\
 &  & 腫瘍性疾患　※腫瘍の項目を参照 \\
循環器系 & 構造と機能 & 心臓の構造と分布する血管・神経、冠動脈の特長とその分布域 \\
 &  & 心筋細胞の微細構造と機能 \\
 &  & 心筋細胞の電気現象と心臓の興奮（刺激）伝導系 \\
 &  & 興奮収縮連関 \\
 &  & 体循環、肺循環と胎児・胎盤循環 \\
 &  & 大動脈と主な分枝（頭頸部、上肢、胸部、腹部、下肢）を図示し、分布域 \\
 &  & 主な静脈、門脈系と上・下大静脈系 \\
 &  & 毛細血管における物質・水分交換 \\
 &  & 胸管を経由するリンパの流れ \\
 &  & 心周期にともなう血行動態 \\
 &  & 心機能曲線と心拍出量の調節機序 \\
 &  & 主な臓器（脳、心臓、肺、腎臓）の循環調節 \\
 &  & 血圧調節の機序 \\
 &  & 体位や運動に伴う循環反応とその機序 \\
 & 症候 & 胸痛 \\
 &  & 腰背部痛 \\
 &  & 動悸 \\
 &  & 呼吸困難 \\
 &  & 咳・痰 \\
 &  & 浮腫 \\
 &  & 体重増加 \\
 &  & 意識障害 \\
 &  & 失神 \\
 &  & 胸水 \\
 & 検査方法 & 胸部単純エックス線撮影 \\
 &  & 心電図（安静時・運動負荷心電図・ホルタ―心電図） \\
 &  & 心臓超音波検査 \\
 &  & 心臓シンチグラフィ－ \\
 &  & 冠動脈造影、冠動脈CT、MRI \\
 &  & 心カテーテル検査（心内圧・心機能・シャント率の測定） \\
 & 特異的治療法 & 虚血性心疾患に対する血行再建術（経皮的冠動脈形成術・ステント留置術・冠動脈バイパス術） \\
 &  & 不整脈に対する非薬物療法（カテーテルアブレーション・電気的除細動・ペースメーカー植え込み・植え込み型除細動器） \\
 &  & 心臓リハビリテーションなどの疾病管理プログラム \\
 & 疾患・病態 & 心不全：心不全（左心・右心・急性・慢性） \\
 &  & 虚血性心疾患：狭心症(労作性・冠攣縮性）、急性冠症候群（不安定狭心症・急性心筋梗塞） \\
 &  & 不整脈：徐脈性不整脈（洞不全症候群・房室ブロック）、上室性頻脈性不整脈（心房細動・心房粗動・発作性上室性頻拍症）、心室性頻脈性不整脈（心室頻拍・多源性心室頻拍（torsades de pointes)）、心室細動、期外収縮（上室性・心室性）、WPW症候群、Brugada症候群 \\
 &  & 弁膜症：僧帽弁疾患（狭窄・閉鎖不全）、大動脈弁疾患（狭窄・閉鎖不全）、三尖弁閉鎖不全 \\
 &  & 心筋・心膜疾患：特発性心筋症（肥大型・拡張型・拘束型）、二次性心筋疾患、急性心筋炎、感染性心内膜炎、急性心膜炎、収縮性心膜炎、心タンポナーデ \\
 &  & 先天性心疾患：心房中隔欠損症、心室中隔欠損症、動脈管開存、Fallot 四徴症 \\
 &  & 動脈疾患：動脈硬化症、急性大動脈解離、大動脈瘤（胸部・腹部）、閉塞性動脈硬化症、Buerger病、高安動脈炎(大動脈炎症候群) \\
 &  & 静脈・リンパ管疾患：深部静脈血栓症、血栓性静脈炎、上大静脈症候群、下肢静脈瘤、リンパ浮腫 \\
 &  & 高血圧症：高血圧症（本態性・二次性）、高血圧緊急症 \\
 &  & 低血圧症：起立性低血圧、神経失調性失神 \\
 &  & 腫瘍性疾患：　※腫瘍の項目を参照 \\
呼吸器系 & 構造と機能 & 気道の構造、肺葉・肺区域と肺門の構造 \\
 &  & 肺循環と体循環の違い \\
 &  & 縦隔と胸膜腔の構造 \\
 &  & 呼吸筋と呼吸運動の機序 \\
 &  & 肺気量分画、換気、死腔（換気力学（胸腔内圧、肺コンプライアンス、抵抗、クロージングボリューム(closing volume)）） \\
 &  & 肺胞におけるガス交換と血流の関係 \\
 &  & 肺の換気と血流（換気血流比）が動脈血ガスにおよぼす影響（肺胞気-動脈血酸素分圧較差(alveolar-arterial oxygen difference <A-aDO2>)） \\
 &  & 呼吸中枢を介する呼吸調節の機序 \\
 &  & 血液による酸素 と二酸化炭素 の運搬の仕組み \\
 &  & 気道と肺の防御機構（免疫学的・非免疫学的）と代謝機能 \\
 & 症候 & 胸痛 \\
 &  & 呼吸困難 \\
 &  & 咳・痰 \\
 &  & 血痰・喀血 \\
 &  & 喘鳴 \\
 &  & 胸部圧迫感 \\
 &  & 呼吸数・リズムの異常 \\
 &  & 胸水 \\
 & 検査方法 & 喀痰検査（喀痰細胞診・喀痰培養） \\
 &  & 胸水検査、胸膜生検 \\
 &  & 呼吸機能検査（スパイロメトリ・肺拡散能力・flow-volume曲線）、動脈血ガス分析、ポリソムノグラフィ、ピークフローメトリ \\
 &  & 画像検査（単純エックス線撮影・CT・MRI）、核医学検査（ポジトロン断層法(positron emission tomography <PET>) \\
 &  & 気管支内視鏡検査 \\
 & 特異的治療法 & 呼吸器理学療法・リハビリテーション \\
 &  & 酸素療法 \\
 &  & 人工換気 \\
 & 疾患・病態 & 呼吸不全：低酸素血症と高二酸化炭素血症 \\
 &  & 呼吸器感染症：急性上気道感染症（かぜ症候群）、扁桃炎・急性喉頭蓋炎、気管支炎、細気管支炎、肺炎（定型・非定型）、肺結核症、非結核性（非定型）抗酸菌症、肺真菌症、嚥下性肺疾患、肺化膿症・膿胸、クループ症候群 \\
 &  & 閉塞性換気障害・拘束性換気障害：慢性閉塞性肺疾患(chronic obstructive pulmonary disease <COPD>)、気腫性嚢胞（ブレブ・ブラ）、気管支喘息（咳喘息を含む）、間質性肺炎（特発性・膠原病及び血管炎関連性）、びまん性汎細気管支炎、➅放射線肺炎、じん肺症（珪肺・石綿肺） \\
 &  & 肺循環障害：肺性心、急性呼吸促(窮)迫症候群(acute respiratory distress syndrome <ARDS>)、肺血栓塞栓症、肺高血圧症（原発性・二次性）、肺動静脈瘻 \\
 &  & 免疫学的機序による肺疾患：過敏性肺炎、サルコイドーシス、好酸球性肺炎、薬剤性肺炎、アレルギー性気管支肺アスペルギルス症 \\
 &  & 異常呼吸：過換気症候群、睡眠時無呼吸症候群、肺胞低換気症候群 \\
 &  & その他の機序による肺疾患：気管支拡張症、無気肺、新生児呼吸促迫症候群、肺リンパ脈管筋腫症、肺胞タンパク症、➅癌性リンパ管症 \\
 &  & 胸膜・縦隔疾患・横隔膜：胸膜炎、気胸（自然・緊張性・外傷性）、縦隔気腫、血胸、乳び胸、➅縦隔炎、胸郭変形（漏斗胸）、横隔神経麻痺、横隔膜ヘルニア \\
 &  & 腫瘍性疾患：　※腫瘍の項目を参照 \\
消化器系 & 構造と機能 & 各消化器官の位置、形態と関係する血管 \\
 &  & 腹膜と臓器の関係 \\
 &  & 食道・胃・小腸・大腸の基本構造と部位による違い \\
 &  & 消化管運動の仕組み \\
 &  & 消化器官に対する自律神経の作用 \\
 &  & 肝の構造と機能 \\
 &  & 胃液の作用と分泌機序 \\
 &  & 胆汁の作用と胆嚢収縮の調節機序 \\
 &  & 膵外分泌系の構造と膵液の作用 \\
 &  & 小腸における消化・吸収の仕組み \\
 &  & 大腸における糞便形成と排便の仕組み \\
 &  & 主な消化管ホルモンの作用 \\
 &  & 歯、舌、唾液腺の構造と機能 \\
 &  & 咀しゃくと嚥下の機構 \\
 &  & 消化管の正常細菌叢（腸内細菌叢）の役割 \\
 & 症候 & 腹痛 \\
 &  & 悪心・嘔吐 \\
 &  & 食思<欲>不振 \\
 &  & 便秘 \\
 &  & 下痢 \\
 &  & 吐血 \\
 &  & 下血 \\
 &  & 腹部膨隆・腫瘤 \\
 &  & 黄疸 \\
 &  & 胸やけ \\
 &  & 肝腫大 \\
 & 検査方法 & 肝炎ウイルス検査 \\
 &  & 腫瘍マーカー（AFP・ CEA・ CA 19-9・ PIVKA-Ⅱなど） \\
 &  & 画像検査（単純エックス線撮影・CT・MRI） \\
 &  & 内視鏡検査 \\
 &  & 生検、細胞診 \\
 & 特異的治療法 & 経管・経腸栄養 \\
 &  & 内視鏡治療（止血・凝固・クリッピング・硬化療法など） \\
 &  & 血管内治療（動脈塞栓術など） \\
 & 疾患・病態 & 食道疾患：食道・胃静脈瘤、胃食道逆流症(gastroesophageal reflux disease <GERD>)、逆流性食道炎、Mallory-Weiss 症候群、食道アカラシア \\
 &  & 胃・十二指腸疾患：消化性潰瘍（胃潰瘍・十二指腸潰瘍)、Helicobacter pylori 感染症、胃ポリープ、急性胃粘膜病変、急性胃腸炎、慢性胃炎、胃切除後症候群、機能性消化管障害（機能性ディスペプシア(functional dyspepsia<FD>)）、肥厚性幽門狭窄症、胃アニサキス症 \\
 &  & 小腸・大腸疾患：急性虫垂炎、腸閉塞、炎症性腸疾患（潰瘍性大腸炎・Crohn 病）、痔核・痔瘻、機能性消化管障害（過敏性腸症候群）、腸管憩室症（大腸憩室炎・大腸憩室出血）、薬物性腸炎、消化管ポリポーシス、先天性疾患(鎖肛・Hirschsprung 病)、腸重積症、便秘症、感染性腸炎、乳児下痢症、虚血性大腸炎、急性出血性直腸潰瘍、上腸間膜動脈閉塞症 \\
 &  & 胆道疾患：胆石症、胆嚢炎、胆管炎、胆嚢ポリープ、先天性胆道拡張症、膵・胆管合流異常症 \\
 &  & 肝疾患：肝炎（A 型・B 型・C 型・D 型・E 型）、肝炎（急性・慢性・劇症型）、肝硬変および合併症(門脈圧亢進症・肝性脳症・肝癌)、アルコール性肝障害、薬物性肝障害、肝膿瘍、原発性胆汁性肝硬変、原発性硬化性胆管炎、自己免疫性肝炎、脂肪肝 \\
 &  & 膵臓疾患：急性膵炎（アルコール性・胆石性・特発性）、慢性膵炎（アルコール性・特発性）、自己免疫性膵炎 \\
 &  & 腹膜・腹壁・横隔膜疾患：腹膜炎、ヘルニア（滑脱・嵌頓・絞扼）、鼠径部ヘルニア \\
 &  & 腫瘍性疾患：　※腫瘍の項目を参照 \\
腎・尿路系（体液・電解質バランスを含む） & 構造と機能 & 体液の量と組成・浸透圧（小児と成人の違いを含めて） \\
 &  & 腎・尿路系の位置・形態と血管分布・神経支配 \\
 &  & 腎の機能の全体像やネフロン各部の構造と機能 \\
 &  & 腎糸球体における濾過の機序 \\
 &  & 尿細管各部における再吸収・分泌機構と尿の濃縮機序 \\
 &  & 水電解質、酸・塩基平衡の調節機構 \\
 &  & 腎で産生される又は腎に作用するホルモン・血管作動性物質（エリスロポエチン・ビタミンD、レニン・アンギオテンシンII、アルドステロン）の作用 \\
 &  & 蓄排尿の機序 \\
 & 症候 & 血尿 \\
 &  & タンパク尿 \\
 &  & 浮腫 \\
 &  & 脱水 \\
 &  & 尿量・排尿の異常 \\
 &  & 臨床症候の分類（急性腎炎症候群・慢性腎炎症候群・ネフローゼ症候群・急速進行性腎炎症候群・反復性または持続性血尿症候群） \\
 & 検査方法 & 糸球体濾過量（実測・推算）を含む腎機能検査法 \\
 &  & 腎・尿路系の画像診断（単純エックス線撮影・尿路造影・CT・MRI） \\
 &  & 腎生検の適応と禁忌 \\
 &  & 尿流動態検査 \\
 & 特異的治療法 & 腎代替療法（血液透析・腹膜透析・腎移植） \\
 & 疾患・病態 & 腎機能の障害：急性腎障害<AKI>, 慢性腎臓病<CKD>, 慢性腎不全 \\
 &  & 電解質異常：高・低Na 血症, 高・低K 血症, 高・低Ca 血症, 高・低P 血症, 高・低Mg 血症 \\
 &  & 酸・塩基平衡障害：アシドーシス（代謝性・呼吸性）、アルカローシス（代謝性・呼吸性） \\
 &  & 原発性糸球体疾患：急性糸球体腎炎, IgA腎症, 膜性腎症, 巣状分節性糸球体硬化症, 微小変化群, 膜性増殖性糸球体腎炎 \\
 &  & 高血圧および腎血管障害：腎硬化症, 腎血管性高血圧症 \\
 &  & 尿細管・間質性疾患：尿細管性アシドーシス, 尿細管間質性腎炎（急性・慢性）, 腎盂腎炎（急性・慢性） \\
 &  & 全身性疾患による腎障害：糖尿病腎障害、IgA血管炎(紫斑病性腎炎）, アミロイド腎症, 膠原病類縁疾患(ループス腎炎・血管炎症候群), 抗糸球体基底膜病(Goodpasture症候群) \\
 &  & 先天異常と外傷：多発性嚢胞腎、膀胱尿管逆流、腎外傷 \\
 &  & 尿路疾患：尿路結石, 尿路の炎症（膀胱炎・前立腺炎・尿道炎）, 神経因性膀胱 \\
 &  & 腫瘍性疾患： ※腫瘍の項目を参照 \\
生殖機能 & 構造と機能 & 生殖腺の発生と性分化の過程 \\
 &  & 男性生殖器の発育の過程 \\
 &  & 男性生殖器の形態と機能 \\
 &  & 精巣の組織構造と精子形成の過程 \\
 &  & 陰茎の組織構造と勃起・射精の機序 \\
 &  & 女性生殖器の発育の過程 \\
 &  & 女性生殖器の形態と機能 \\
 &  & 性周期発現と排卵の機序 \\
 &  & 閉経の過程と疾病リスクの変化 \\
 & 症候 & 腹痛 \\
 &  & 腹部膨隆・腫瘤 \\
 &  & 血尿 \\
 &  & 尿量・排尿の異常 \\
 &  & 月経異常 \\
 &  &  \\
 &  & 勃起不全 \\
 &  & 射精障害 \\
 &  & 精巣機能障害 \\
 &  & 不正性器出血 \\
 &  & 乳汁漏出症 \\
 &  & 腟分泌物（帯下）の増量 \\
 &  & 腟乾燥感 \\
 &  & 性交痛 \\
 &  & タンパク尿 \\
 & 検査方法 & 精巣と前立腺の画像検査法（尿路造影・CT・MRI）、超音波検査 \\
 &  & 血中ホルモン（卵胞刺激ホルモン(Follicle-Stimulating Hormone <FSH>)、黄体形成ホルモン(luteinizing hormone <LH>)、プロラクチン、ヒト絨毛性ゴナドトロピン(human chorionic gonadotropin <hCG>)、エストロゲン、プロゲステロン）の測定 \\
 &  & 骨盤内臓器と腫瘍の画像診断（超音波断層法CT、MRI、子宮卵管造影(hysterosalpingography <HSG>) \\
 &  & 基礎体温測定 \\
 &  & 腟分泌物所見 \\
 & 特異的治療法 & 体外受精―胚移植<IVF-ET> \\
 & 疾患・病態 & 男性生殖器疾患：男性不妊症、前立腺肥大症、前立腺炎、停留精巣、陰嚢内腫瘤、精巣捻転症 \\
 &  & 女性生殖器疾患：内外生殖器の先天異常、卵巣機能障害、月経異常（月経前症候群・機能性月経困難症、視床下部性無月経）、更年期障害、不妊症、子宮筋腫・子宮腺筋症、子宮内膜症、外陰・腟と骨盤内感染症 \\
 &  & 腫瘍性疾患（男性）：　※腫瘍の項目を参照 \\
 &  & 腫瘍性疾患（女性）：　※腫瘍の項目を参照 \\
妊娠と分娩 & 構造と機能 & 妊娠・分娩・産褥での母体の解剖学的と生理学的変化 \\
 &  & 胎児・胎盤系の発達過程での機能・形態的変化 \\
 &  & 正常妊娠の経過（妊娠に伴う身体的変化を含む） \\
 &  & 正常分娩の経過 \\
 &  & 産褥の過程 \\
 &  & 育児に伴う母体の変化、精神問題および母子保健 \\
 & 症候 & 腹痛 \\
 &  & 悪心・嘔吐 \\
 &  & 腹部膨隆・腫瘤 \\
 &  & 性器出血 \\
 &  & 月経異常 \\
 & 検査方法 & 妊娠の検査（妊娠反応、超音波検査） \\
 &  & 妊娠中の検査（血液検査・出生前遺伝学的検査・羊水検査・分泌物検査・ノンストレステスト・超音波検査・超音波ドプラ法・羊水量） \\
 &  & 分娩の検査（超音波検査・胎児心拍数陣痛図） \\
 & 特異的治療法 & 妊娠時の薬物療法の注意点 \\
 &  & 人工妊娠中絶、鉗子・吸引分娩、帝王切開術の適応 \\
 & 疾患・病態 & 異常妊娠：妊娠悪阻、異所性妊娠、流産・切迫流産、ハイリスク妊娠、妊娠高血圧症候群、多胎妊娠、前期破水、切迫早産 \\
 &  & 異常分娩：早産、微弱陣痛、遷延分娩、回旋異常、前置胎盤、癒着胎盤、常位胎盤早期剥離、分娩外傷 \\
 &  & 異常産褥：子宮復古不全、産褥熱、乳腺炎 \\
 &  & 産科出血：弛緩出血、羊水塞栓症、播種性血管内凝固<DIC> \\
 &  & 合併症妊娠：貧血、耐糖能異常、甲状腺疾患、免疫性血小板減少性紫斑病<ITP>、感染症（HBV・HCV・HIV・HTLV-Ⅰ・パルボウイルスB19・B群連鎖球菌、TORCH症候群） \\
乳房 & 構造と機能 & 乳房の構造と機能 \\
 &  & 成長発達に伴う乳房の変化 \\
 &  & 乳汁分泌に関するホルモンの作用を説明できる。 \\
 & 症候 & 乳房腫瘤 \\
 &  & 異常乳汁分泌（血性乳頭分泌） \\
 &  & 乳房の腫脹・疼痛・変形 \\
 &  & 女性化乳房 \\
 & 検査方法 & 乳房腫瘤に対する画像診断（超音波検査・マンモグラフィー・MRI） \\
 &  & 乳房腫瘤に対する細胞・組織診断法 \\
 & 特異的治療法 & ※現時点で該当項目なし \\
 & 疾患・病態 & 良性乳腺疾患（乳腺炎・乳腺症） \\
 &  & 腫瘍性疾患　※腫瘍の項目を参照 \\
内分泌・栄養・代謝系 & 構造と機能 & ホルモンの構造的分類、作用機序および分泌調節機能 \\
 &  & 視床下部ホルモン・下垂体ホルモンの名称、作用と相互関係 \\
 &  & 甲状腺と副甲状腺(上皮小体)から分泌されるホルモンの作用と分泌調節機構 \\
 &  & 副腎の構造と分泌されるホルモンの作用と分泌調節機構 \\
 &  & 膵島から分泌されるホルモンの作用 \\
 &  & 男性ホルモン・女性ホルモンの合成・代謝経路と作用 \\
 &  & 三大栄養素、ビタミン、微量元素の消化吸収と栄養素の生物学的利用効率 \\
 &  & 糖質・タンパク質・脂質の代謝経路と相互作用 \\
 &  & 血中ホルモン濃度に影響を与える因子およびホルモンの日内変動 \\
 & 症候 & 体重減少 \\
 &  & 体重増加 \\
 &  & 月経異常 \\
 &  & 低身長 \\
 &  & 甲状腺腫 \\
 &  & ホルモンの過剰または欠乏がもたらす身体症状 \\
 &  & エネルギー摂取の過剰または欠乏がもたらす身体症状 \\
 & 検査方法 & 血中・尿中ホルモン測定 \\
 &  & 内分泌機能検査、負荷試験 \\
 & 特異的治療法 & ※現時点でなし \\
 & 疾患・病態 & 間脳・下垂体疾患：先端巨大症、Cushing病、高プロラクチン血症、下垂体前葉機能低下症、視床下部下垂体炎、中枢性尿崩症、抗利尿ホルモン不適合分泌症候群<SIADH>、下垂体腫瘍 \\
 &  & 甲状腺疾患：甲状腺機能亢進症、甲状腺機能低下症、甲状腺炎（慢性・無痛性・亜急性） \\
 &  & 副甲状腺疾患：副甲状腺機能亢進症、副甲状腺機能低下症、悪性腫瘍に伴う高カルリウム血症 \\
 &  & 副腎皮質・髄質疾患：Cushing 症候群、アルドステロン過剰症、原発性アルドステロン症、副腎不全(急性・慢性<Addison 病>) \\
 &  & 糖代謝異常：1型糖尿病、2型糖尿病、糖尿病の急性期合併症（糖尿病ケトアシドーシス・高血糖高浸透圧症候群・乳酸アシドーシス）、糖尿病の慢性合併症（網膜症・腎症・神経障害、足病変）、低血糖症 \\
 &  & 脂質代謝異常：脂質異常症、肥満症 \\
 &  & ビタミン・核酸・その他の代謝異常：ビタミン欠乏症、高尿酸血症・痛風、全身性アミロイドーシス \\
 &  & 小児疾患：成長ホルモン分泌不全型低身長、先天性副腎皮質過形成 \\
 &  & 腫瘍性疾患：　※腫瘍の項目を参照 \\
眼・視覚系 & 構造と機能 & 眼球と付属器の構造 \\
 &  & 視覚情報の受容の仕組みと伝導路 \\
 &  & 眼球運動の仕組み \\
 &  & 対光反射、輻輳反射、角膜反射の機能 \\
 & 症候 & めまい \\
 &  & 頭痛 \\
 &  & 悪心・嘔吐 \\
 &  & 視力障害 \\
 &  & 視野異常 \\
 &  & 眼球運動障害 \\
 &  & 眼脂・眼の充血 \\
 &  & 飛蚊症 \\
 &  & 眼痛 \\
 & 検査方法 & 視力検査 \\
 &  & 視野検査 \\
 &  & 細隙灯顕微鏡検査 \\
 &  & 眼圧検査 \\
 &  & 眼底検査 \\
 & 特異的治療法 & レーザー治療 \\
 & 疾患・病態 & 屈折異常（近視・遠視・乱視）と調節障害 \\
 &  & 結膜炎・角膜炎・眼瞼炎 \\
 &  & 麦粒腫・霰粒腫 \\
 &  & 白内障 \\
 &  & 緑内障 \\
 &  & 裂孔原性網膜剥離 \\
 &  & 加齢黄斑変性・網膜色素変性 \\
 &  & 糖尿病・高血圧による眼底変化（糖尿病網膜症など） \\
 &  & ぶどう膜炎 \\
 &  & 視神経炎（症）・うっ血乳頭 \\
 &  & 化学損傷（アルカリ・酸） \\
 &  & 網膜静脈閉塞症と動脈閉塞症 \\
 &  & 腫瘍性疾患　※腫瘍の項目を参照 \\
耳鼻・咽喉・口腔系 & 構造と機能 & 外耳・中耳・内耳の構造 \\
 &  & 聴覚・平衡覚の受容のしくみと伝導路 \\
 &  & 口腔・鼻腔・咽頭・喉頭の構造 \\
 &  & 喉頭の機能と神経支配 \\
 &  & 眼球運動、姿勢制御と関連させた平衡感覚機構 \\
 &  & 味覚と嗅覚の受容のしくみと伝導路 \\
 & 症候 & めまい \\
 &  & 嚥下困難 \\
 &  & 気道狭窄 \\
 &  & 難聴 \\
 &  & 鼻出血 \\
 &  & 咽頭痛 \\
 &  & 開口障害 \\
 &  & 反回神経麻痺（嗄声） \\
 &  & 耳鳴 \\
 &  & 鼻閉 \\
 &  & 鼻漏 \\
 &  & 嗅覚障害 \\
 &  & いびき \\
 &  & 味覚障害 \\
 &  & 唾液分泌異常 \\
 &  & 口腔内異常 \\
 & 検査方法 & 聴力検査と平衡機能検査 \\
 &  & 味覚検査と嗅覚検査 \\
 &  & 耳鏡、鼻鏡、喉頭鏡、鼻咽腔・喉頭内視鏡 \\
 & 特異的治療法 & 補聴器・人工聴覚器 \\
 &  & 気管切開 \\
 & 疾患・病態 & 中耳炎（急性・慢性・滲出性・真珠腫性） \\
 &  & 外耳炎、耳せつ \\
 &  & 難聴（騒音性、薬剤性、突発性、老人性）、乳幼児の難聴 \\
 &  & めまい（末梢性・中枢性）、動揺病 \\
 &  & 良性発作性頭位眩暈症、Ménière病 \\
 &  & 前庭神経炎 \\
 &  & 鼻出血 \\
 &  & 副鼻腔炎（急性・慢性） \\
 &  & アレルギー性鼻炎 \\
 &  & 鼻咽喉頭の炎症性疾患（鼻炎・扁桃炎・咽頭炎・喉頭炎・喉頭蓋炎・扁桃周囲炎・膿瘍） \\
 &  & う蝕、歯周病等の歯科疾患（全身への影響や口腔機能管理を含めて） \\
 &  & 口角炎、口内炎、舌炎、鵞口瘡、白板症など \\
 &  & 外耳道・鼻腔・咽頭・喉頭・気管・食道の代表的な異物 \\
 &  & 唾液腺疾患（急性唾液腺炎・唾石症・Sjogren症候群・Mikulicz病） \\
 &  & 顎関節症 \\
 &  & 耳鼻・咽頭・口腔系の外傷・損傷（鼻骨骨折・吹き抜け骨折・耳介血腫・鼓膜損傷など） \\
 &  & 先天異常（唇裂・口蓋裂など） \\
 &  & 口蓋扁桃肥大症、咽頭扁桃<アデノイド>増殖症、声帯ポリープ \\
 &  & 頭頸部疾患（頸部リンパ節炎・頸部膿瘍・頸部リンパ節転移など） \\
 &  & 腫瘍性疾患：※腫瘍の項目を参照 \\
精神系 & 構造と機能 & ※神経系の項目を参照 \\
 & 症候 & 不安・抑うつ \\
 &  & 認知障害 \\
 &  & 意識障害 \\
 &  & 不眠 \\
 &  & 幻覚・妄想 \\
 &  & 心気症 \\
 & 検査方法 & 質問紙法 \\
 &  & Rorschachテスト \\
 &  & 簡易精神症状評価尺度(Brief Psychiatric Rating Scale <BPRS>) \\
 &  & Hamiltonうつ病評価尺度 \\
 &  & Beckのうつ病自己評価尺度 \\
 &  & 状態特性不安検査(State-Trait Anxiety Inventory　 <STAI>） \\
 &  & Mini-Mental State Examination <MMSE> \\
 &  & 改訂長谷川式簡易知能評価スケール \\
 &  & 精神科診断分類法 \\
 & 特異的治療法 & 精神科面接 \\
 &  & 精神保健及び精神障害者福祉に関する法律、心神喪失者等医療観察法の適用場面 \\
 &  & コンサルテーション・リエゾン精神医学 \\
 & 疾患・病態 & 認知症　※神経系の項目を参照 \\
 &  & 症状性精神病 \\
 &  & 依存症（薬物使用、アルコール、ギャンブル） \\
 &  & うつ病、双極性障害（躁うつ病） \\
 &  & 統合失調症 \\
 &  & 強迫性障害 \\
 &  & 不安障害（パニック障害・社交不安障害） \\
 &  & 解離性障害 \\
 &  & 身体表現性障害（身体化障害・疼痛性障害・心気症）、心身症、ストレス関連障害（急性ストレス障害・心的外傷後ストレス障害）、過換気症候群 \\
 &  & 摂食障害（神経性食思不振症・神経性過食症） \\
 &  & パーソナリティ障害 \\
救急系（中毒・環境因子による疾患を含む） & 症候 & 地域の救急医療体制について病院前救護体制、メディカルコントロール、初期・二次・三次救急医療の概念を用いて説明できる \\
 &  & 意識障害 \\
 &  & 失神 \\
 &  & けいれん \\
 &  & 呼吸困難 \\
 &  & 胸痛 \\
 &  & 運動麻痺・筋力低下 \\
 &  & 腹痛 \\
 &  & 悪心・嘔吐 \\
 &  & 吐血 \\
免疫・アレルギー & 症候 & ショック \\
 &  & 発熱 \\
 &  & 全身倦怠感 \\
 &  & 皮疹 \\
 &  & リンパ節腫脹 \\
 &  & 浮腫 \\
 &  & 呼吸困難 \\
 &  & 咳・痰 \\
 &  & 血尿 \\
 &  & 関節痛・関節腫脹 \\
感染症 & 症候 & ショック \\
 &  & 発熱・高体温 \\
 &  & けいれん \\
 &  & 意識障害・失神 \\
 &  & 脱水 \\
 &  & 全身倦怠感 \\
 &  & 黄疸 \\
 &  & 発疹 \\
 &  & リンパ節腫脹 \\
 &  & 浮腫 \\
 &  & 胸水 \\
 &  & 胸痛・胸部圧迫感 \\
 &  & 呼吸困難・息切れ \\
 &  & 咳・痰 \\
 &  & 血痰・喀血 \\
 &  & 頭痛・頭重感 \\
 &  & 腹痛 \\
 &  & 悪心・嘔吐 \\
 &  & 便秘・下痢・血便 \\
 &  & 吐血・下血 \\
 &  & 血尿・タンパク尿 \\
 &  & 関節痛・関節腫脹 \\
 &  & 腰背部痛 \\
 &  & 咽頭痛 \\
主要症候 & 症候 & 発熱 \\
 &  & 全身倦怠感 \\
 &  & 食思(欲)不振 \\
 &  & 体重減少 \\
 &  & 体重増加 \\
 &  & 意識障害 \\
 &  & 失神 \\
 &  & けいれん \\
 &  & めまい \\
 &  & 浮腫 \\
 &  & 発疹 \\
 &  & 咳・痰 \\
 &  & 血痰・喀血 \\
 &  & 呼吸困難 \\
 &  & 胸痛 \\
 &  & 動悸 \\
 &  & 嚥下困難 \\
 &  & 腹痛 \\
 &  & 悪心・嘔吐 \\
 &  & 吐血 \\
 &  & 下血 \\
 &  & 便秘 \\
 &  & 下痢 \\
 &  & 黄疸 \\
 &  & 腹部膨隆・腫瘤 \\
 &  & リンパ節腫脹 \\
 &  & 尿量・排尿の異常 \\
 &  & 血尿 \\
 &  & 月経異常 \\
 &  & 不安・抑うつ \\
 &  & 認知障害 \\
 &  & 頭痛 \\
 &  & 運動麻痺・筋力低下 \\
 &  & 歩行障害 \\
 &  & 感覚障害 \\
 &  & 腰背部痛 \\
 &  & 関節痛・関節腫脹 \\
\bottomrule
\end{xltabular}
