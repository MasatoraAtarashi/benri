## 1. DeepL CLIをインストール
> $ wget -O - https://raw.githubusercontent.com/eggplants/deepl-cli/master/deeplcli_setup.sh | bash

## 2. 以下のスクリプトを保存
```translate.sh
#!/bin/shd
input=$1
text=`cat $input | tr -d '\r' | tr -d '\n'`
echo `deepl en:ja <<< $text`
```

## 3. 使用方法
> translate.sh <翻訳したい英文を保存したファイル名>
### 実行例
> translate.sh input.txt

### 入力
```input.txt
Overall, the reviewed studies demonstrate a common concern of users and companies
that use Cloud services with the privacy of their data. There are difficulties in maintaining
data security and privacy, especially because of the threats surrounding Cloud computing
solutions. The studies point to several threats, which have a direct impact on the adoption
of technology and its expansion. One of the main difficulties pointed out in the studies is
related to the threats of insider attacks to organizations that can come from employees or
people contracted to provide services in the premises of the company.
```

### 結果
> 全体的に見て、レビューされた研究では、データのプライバシーに関するクラウドサービスを利用するユーザーや企業の共通の懸念が示されています。データのセキュリティとプライバシーを維持することは困難であり、特にクラウドのコンピューティングソリューションを取り巻く脅威のためです。研究では、いくつかの脅威が指摘されており、それらは技術の採用とその拡大に直接的な影響を与えている。研究で指摘されている主な問題の一つは、従業員や企業の敷地内でサービスを提供するために契約している人から組織へのインサイダー攻撃の脅威に関連しています。
