-- 코드를 입력하세요
#SELECT MCDP_CD as '진료과코드', count(APNT_NO) as '5월예약건수'
#FROM APPOINTMENT 
#GROUP BY MCDP_CD
#ORDER BY 2 ASC, 1 ASC;

#HAVING CLAUSE 에러 : 해빙절에 순수 컬럼만 넣어라 
# 타임스탬프 성질이 뭐여

#2차시도
SELECT MCDP_CD as '진료과코드', count(APNT_NO) as '5월예약건수'
FROM APPOINTMENT 
WHERE date_format(APNT_YMD, "%Y-%m") like "2022-05"
GROUP BY MCDP_CD
ORDER BY 2 ASC, 1 ASC;

#2차시도
#SELECT MCDP_CD as '진료과코드', count(APNT_NO) as '5월예약건수'
#FROM APPOINTMENT 
#WHERE APNT_YMD like "2022-05%"
#GROUP BY MCDP_CD
#ORDER BY 2 ASC, 1 ASC;
#timestampe도 문자처럼 쓸 수 있구나
