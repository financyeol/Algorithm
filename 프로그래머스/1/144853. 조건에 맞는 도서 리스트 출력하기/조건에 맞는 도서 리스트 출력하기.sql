-- 코드를 입력하세요
SELECT book_id, date_format(published_date, '%Y-%m-%d')
from book
where category = "인문" and year(published_date) = 2021
order by 2 asc;