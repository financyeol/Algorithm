SELECT order_id
      ,product_id
      ,DATE_FORMAT(out_date,"%Y-%m-%d") 
      AS out_date
       ,IF(out_date <= "2022-05-01", "출고완료",
            IF(out_date > "2022-05-01", "출고대기",
                IF(out_date is null, "출고미정","오류입니다")))
        AS 출고여부
FROM food_order
ORDER BY order_id ASC;