#1차시도 (where 절에 count해서 1이상인것? 서브쿼리?)
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
WHERE USER_ID ;

#각이 잘 나오지 않음

#2차시도
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
GROUP BY USER_ID, PRODUCT_ID
HAVING count(USER_ID) > 1 AND count(PRODUCT_ID) > 1
ORDER BY 1 ASC, 2 DESC; 

#3차 시도 (유저 칼럼으로 묶고 그다음에 조건으로 중복된 애들을 올리자)
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
GROUP BY USER_ID
HAVING count(PRODUCT_ID) > 1
ORDER BY 1 ASC, 2 DESC; 

#4차 시도 (구글링
#둘다 그룹해야하는게 맞다..
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
GROUP BY USER_ID, PRODUCT_ID
HAVING count(PRODUCT_ID) > 1
ORDER BY 1 ASC, 2 DESC;


