/* ■ [回答]と記載のある箇所へ、1〜8の各課題内容に沿ったSQL文を記述しなさい。 */

-- 1. 店舗テーブルから店舗名を抽出しなさい。また、列名の表示は別名で'店舗名'とすること。
-- [回答] select store_name as "店舗名" from store_table


-- 2. 店舗情報を店舗名のABC順に抽出しなさい。
-- [回答] SELECT * FROM store_table ORDER BY store_nameAbc


-- 3. 在庫テーブルに店舗テーブル、商品テーブルを「内部結合」し、店舗名・商品名・在庫数を全て取得しなさい。
-- [回答]
 SELECT store_name, goods_name, quantity
 FROM stock_table
 JOIN store_table
 ON store_table.store_code = store_table.store_code
 JOIN goods_table
 ON stock_table.goods_code = goods_table.goods_code


-- 4. 商品テーブルから全商品の単価の平均値を抽出しなさい。
-- [回答] SELECT AVG(price) from goods_table


-- 5. 店舗コード='EA01'の在庫数の平均値より大きい在庫数を持つ店舗コードを抽出しなさい。
-- [回答]
select store_code from stock_table group by store_code
having SUM(quantity) > (select avg(quantity) from stock_table WHERE store_code = 'EA01')

-- 6. 商品テーブルに「商品コード='M001'、商品名='マフラー'、単価=4500円、更新日付=本日日付」のデータを追加しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
INSERT INTO goods_table
VALUES ('M001','マフラー',4500,TO_DATE('2021-7-14','YY-MM-DD'));
SELECT * FROM goods_table



-- 7. 在庫テーブルの商品コード='S987'、かつ、店舗コード='EA01'に対して、「在庫数=10、更新日付=本日日付」で更新しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
update stock_table
SET quantity = 10, update_day = '2021-7-14'
where goods_code = 'S987' and store_code = 'EA01'

SELECT * from stock_table

-- 8. 7で更新した商品を削除しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
Delete from stock_table where goods_code = 'S987' and store_code = 'EA01'
select * from stock_table