#1차 시도 (틀림)
SELECT i.animal_id
        , i.name
       -- , i.datetime
       -- , o.datetime
FROM animal_ins i
JOIN animal_outs o 
ON i.animal_id = o.animal_id
WHERE i.datetime >= o.datetime
ORDER BY i.datetime ASC;

#구성이유 : datetime은 문자, 숫자 취급이 가능하므로 비교연산자 사용
#보호시작일, 입양일 둘다 넣어봐서 이상없는지 확인 후에 각주

#2차 시도 ()