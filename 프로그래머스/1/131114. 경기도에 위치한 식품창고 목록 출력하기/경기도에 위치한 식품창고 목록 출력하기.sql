-- 코드를 입력하세요
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, ifnull(freezer_yn, 'N') FREEZER_YN
from food_warehouse
where address like "%경기도%"
order by 1 asc;