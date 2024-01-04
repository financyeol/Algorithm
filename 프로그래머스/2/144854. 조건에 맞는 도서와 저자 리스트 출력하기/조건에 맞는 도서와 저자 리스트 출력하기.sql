SELECT b.book_id, a.author_name, date_format(b.published_date,"%Y-%m-%d") as PUBLISHED_DATE
FROM book b
join author a
on b.author_id = a.author_id
where b.category like "경제"
ORDER BY PUBLISHED_DATE ASC;