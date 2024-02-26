SELECT DISTINCT c.car_id
FROM car_rental_company_car AS c
JOIN car_rental_company_rental_history AS h
ON c.car_id = h.car_id
WHERE c.car_type = "세단" 
AND date_format(start_date, "%Y-%m-%d") >= '2022-10-01'
ORDER BY c.car_id DESC

