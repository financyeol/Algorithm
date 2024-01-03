#1차 시도

#SELECT date_format(datetime,"%h") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
#FROM animal_outs
#GROUP BY HOUR
#ORDER BY 1 ASC;
# 01시부터 12시까지만 나옴

#2차 시도
#SELECT date_format(datetime,"%H") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
#FROM animal_outs
#WHERE HOUR >= 9
#GROUP BY HOUR
#ORDER BY 1 ASC;

#3차시도
#SELECT date_format(datetime,"%H") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
#FROM animal_outs
#WHERE date_format(datetime,"%H") >= 9
#GROUP BY HOUR
#ORDER BY 1 ASC;

#4차시도
#SELECT date_format(datetime,"%H") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
#FROM animal_outs
#WHERE HOUR >= 9 AND HOUR <20
#GROUP BY HOUR
#ORDER BY 1 ASC;

#5차시도
#SELECT date_format(datetime,"%H") AS HOUR, COUNT(ANIMAL_ID) AS COUNT
#FROM animal_outs
#WHERE date_format(datetime,"%H") >= 9 #AND date_format(datetime,"%H") <20
#GROUP BY HOUR
#ORDER BY 1 ASC;

#다른 방법 
SELECT HOUR(datetime) AS HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM animal_outs
GROUP BY HOUR
HAVING HOUR >= 9 AND HOUR <20
ORDER BY 1 ASC;
