-- 코드를 입력하세요
SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, 
date_format(r.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_REPLY r
join USED_GOODS_BOARD b
on b.board_id = r.board_id
WHERE date_format(b.CREATED_DATE, '%Y-%m') like '2022-10'
ORDER BY r.CREATED_DATE ASC, 1 ASC;