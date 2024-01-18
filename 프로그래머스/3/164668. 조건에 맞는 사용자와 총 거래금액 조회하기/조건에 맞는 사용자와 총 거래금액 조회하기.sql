-- 코드를 입력하세요
SELECT u.user_id
      ,u.nickname
      ,sum(PRICE) AS total_sales
FROM used_goods_board b
JOIN used_goods_user u 
ON b. writer_id = u.user_id
WHERE status = "DONE"
GROUP BY u.user_id
HAVING total_sales >= 700000
ORDER BY total_sales ASC;
# 조인조건 라이터아이티 = 유저아이디