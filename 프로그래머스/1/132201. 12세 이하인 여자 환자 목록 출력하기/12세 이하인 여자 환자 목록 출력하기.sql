-- 코드를 입력하세요
SELECT pt_name, pt_no, gend_cd, age, ifnull(tlno, "NONE") tlno
from patient
where age <= 12 and gend_cd like 'W'
order by 4 desc, 1 asc