SELECT u.user_id
      ,u.nickname
      ,CONCAT(u.city, " ", u.street_address1," ", u.street_address2) AS 전체주소
      , CONCAT(substr(u.tlno,1,3), "-", substr(u.tlno,4,4),"-",substr(u.tlno,8)) AS 전화번호
FROM used_goods_user AS u
JOIN used_goods_board AS b 
ON b.writer_id = u.user_id
GROUP BY u.user_id
HAVING COUNT(b.writer_id) >= 3
ORDER BY u.user_id DESC;