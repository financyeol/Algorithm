SELECT count(DISTINCT NAME) as count #중복된 이름 합쳐서 개수 세고 열 이름 count로 표시 
From ANIMAL_INS # 전체 테이블
WHERE NAME IS NOT NULL #NULL 값 아닌 조건 
