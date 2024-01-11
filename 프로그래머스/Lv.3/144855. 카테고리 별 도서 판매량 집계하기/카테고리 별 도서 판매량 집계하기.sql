#1차 시도

select b.category
        ,sum(s.sales) AS total_sales
from book b
join book_sales s
on b.book_id 
    = s.book_id
WHERE DATE_FORMAT(s.sales_date, "%Y-%m") = "2022-01"
group by b.category
ORDER BY b.category ASC; #오류남 왜..?

#2차 시도 
# SELECT b.CATEGORY, SUM(bs.SALES) AS TOTAL_SALES
# FROM BOOK b
# JOIN BOOK_SALES bs
# ON b.BOOK_ID = bs.BOOK_ID
# WHERE bs.SALES_DATE LIKE '2022-01%'
# GROUP BY b.CATEGORY
# ORDER BY b.CATEGORY;


#다시 시도한다고 판매날짜말고 출판날짜는 넣고 앉아있음.
#계속 디버깅한다고 세미콜론 이곳저곳에 붙여서 붙인지도 모르고 에러내고 있었음..