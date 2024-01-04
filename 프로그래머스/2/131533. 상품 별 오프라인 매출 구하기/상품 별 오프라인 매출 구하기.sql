#1차 시도 
# SELECT P.PRODUCT_ID, P.PRODUCT_CODE, P.PRICE, O.OFFLINE_SALE_ID, O.SALES_AMOUNT, O.SALES_DATE
# FROM PRODUCT P
# JOIN OFFLINE_SALE O 
# ON P.PRODUCT_ID = O.PRODUCT_ID;
# GROUP BY PRODUCT_ID
# 셀렉트를 *하면 조인이 안된다. why?  사실은 SELECT 절에 반환할 함수가 없어서 !

#2차시도
SELECT P.PRODUCT_CODE, COUNT(o.SALES_AMOUNT) *(p.price) AS SALES
FROM Product p
JOIN Offline_sale o 
ON p.product_ID = o.product_ID
GROUP BY P.PRODUCT_CODE
ORDER BY 2 DESC, 1 ASC;

#그러나 SQL 쿼리에서는 곱셈 연산자를 사용하여 COUNT(o.SALES_AMOUNT)과 p.PRICE를 곱하는 것이 허용되지 않습니다. 이는 GROUP BY 절에 있는 열 이외의 열에 대해 집계 함수를 사용하지 않은 경우에는 그룹 단위로 결과를 결정할 수 없기 때문입니다.

#3차시도
# 각각 곱헤서 그걸 더하기
SELECT P.PRODUCT_CODE, SUM(o.SALES_AMOUNT*p.price) AS SALES
FROM Product p
JOIN Offline_sale o 
ON p.product_ID = o.product_ID
GROUP BY P.PRODUCT_CODE
ORDER BY 2 DESC, 1 ASC;