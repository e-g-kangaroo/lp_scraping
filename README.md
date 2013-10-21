# 公示地価情報スクレイピングツール

### Ruby バージョン
1.9.3

### 依存しているgem
- nokogiri [version 1.6]

---

Usage: ``scraping [options] <place ID>``  
```
--type VAL       町域のタイプ（県全体での取得[division]か、市単位での取得[city]。デフォルトは city）  
--mode INT       対象となる地価情報（地価公示のみ[0]、都道府県地価調査のみ[1]、0,1両方[2]。デフォルトは 2）  
--year_from INT  取得したい地価情報の調査年の開始年（デフォルトは今の年）  
--year_to INT    取得したい地価情報の調査年の終了年（デフォルトは今の年）  
--usage VAL      利用区分（デフォルトは住宅に関する区分のみ）  
--page INT       アクセスするページ（デフォルトは1）  
--amount INT     取得する地価情報の最大個数。全て取得する場合は-1（デフォルトは-1）  
--last_year INT  ???  
--chi VAL        ???（デフォルトは空）  
--pfr VAL        ???（デフォルトは空）  
--pto VAL        ???（デフォルトは空）  
```

``scraping -h,--help`` でヘルプを表示  
``scraping -v,--version`` でバージョンを表示  

