# 평균 대여 기간이 7일 이상인 자동차
#자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력
#평균 대여 기간은 소수점 두번째 자리에서 반올림하고
#결과는 평균 대여 기간 내림차순 정렬 / 자동차 ID를 기준으로 내림차순 정렬해주세요.

SELECT 
      car_id
    , ROUND(AVG(TIMESTAMPDIFF(day, DATE(start_date), DATE(end_date))) + 1, 1) AS average_duration
    
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY car_id
HAVING average_duration >= 7
ORDER BY average_duration DESC, car_id DESC;
