SELECT MONTH(start_date) AS month,
       car_id,
       COUNT(*) AS records
FROM car_rental_company_rental_history AS t1
WHERE DATE_FORMAT(start_date, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
    AND EXISTS (SELECT 1
                FROM car_rental_company_rental_history AS t2
                WHERE DATE_FORMAT(t2.start_date, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
                  AND t1.car_id = t2.car_id
                GROUP BY t2.car_id
                HAVING COUNT(t2.car_id) >= 5)
GROUP BY car_id, MONTH(start_date)
ORDER BY month ASC, car_id DESC;