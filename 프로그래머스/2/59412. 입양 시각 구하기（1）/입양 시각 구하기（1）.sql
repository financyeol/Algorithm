#1차 시도

# 01시부터 12시까지만 나옴

#2차 시도 


#3차시도

#아마 숫자형시기 09로 표시되어서 그런 듯?

#4차시도 


#5차시도
SELECT date_format(datetime,"%H") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM animal_outs
WHERE date_format(datetime,"%H") >= 9 AND date_format(datetime,"%H") <20
GROUP BY HOUR
ORDER BY 1 ASC;

# 각 시간대별 입양 발생 건수 
# 시간대 별로 정렬
