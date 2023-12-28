#1차시도 
#SELECT *
#FROM FOOD_PRODUCT
#WHERE PRICE = MAX(PRICE);

#2차시도 
#MIN,MAX는 숫자 문자 다된다. 아스키 코드값으로 비교/단순 최소, 최대값 구하기는 SELECT 절에서 사용하는게 좋다


#SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, MAX(PRICE) AS PRICE
#FROM FOOD_PRODUCT;
#틀렸음 
#select product_name, max(price)
#from food_product;

# 결과를 보니 맥스는 맥스만 뽑고 다른 행이랑 연결되진 않는다. 
#서브쿼리나 동등조인으로 연결해야겠다는 생각이듬

#3차시도(서브쿼리)
select *
from food_product
WHERE PRICE =(SELECT MAX(PRICE) FROM FOOD_PRODUCT )


#다른 시도




# 느낌표 
# MIN,MAX는 문자열 가능 
# 순서는