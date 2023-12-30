-- 코드를 입력하세요
SELECT left(product_code,2) CATEGORY, count(product_id) PRODUCTS
FROM PRODUCT
group by 1
ORDER BY 1 ASC;