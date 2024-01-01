-- 코드를 입력하세요
# 1차 시도 
#IF와 in 사용 
#SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE = ("%Neutered%", "%Spayed%"), 'O', 'X') as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;
# 중성화 열이 전부다 X로 나온다.

# 2차 시도 
# LIKE, OR 사용
#SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE like "%Neutered%" OR "%Spayed%", 'O', 'X') as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;
#아마 OR 뒤에만 적용되어서 if에 안걸림

# 3차 시도 
# CASE 사용
#SELECT ANIMAL_ID, NAME, 
#CASE
#    WHEN (SEX_UPON_INTAKE like "%Neutered%") THEN "O"
#    WHEN (SEX_UPON_INTAKE like "%Spayed%") THEN 'O' 
#    END as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;
# 중성화 안한 인원값이 빈칸으로 뜨는 것 말고는 작동

# 4차 시도 
# IF 중첩 사용
#SELECT ANIMAL_ID, NAME, 
#CASE
#    WHEN (SEX_UPON_INTAKE like "%Neutered%") THEN "O"
#    WHEN (SEX_UPON_INTAKE like "%Spayed%") THEN 'O' 
#    WHEN (SEX_UPON_INTAKE NOT LIKE ("%Spayed%"AND "%Neutered%") THEN "X"
#    END as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;
# 그래서 NOT LIKE 로 넣었더니 안됨... 
          
# 5차 시도
# 조건문이니까 등호가 최적화인가?
# STRSUB 사용

#SELECT ANIMAL_ID, NAME, IF(SUBSTR(SEX_UPON_INTAKE, 1, 8) = "Neutered", 'O',
#                           IF SUBSTR(SEX_UPON_INTA#KE, 1, 6) = "Spayed", 'O', 'X' ) as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;

# 6차 시도 (인터넷 검색)

#SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE like "%Neutered%" OR SEX_UPON_INTAKE like "%Spayed%", 'O', 'X') as '중성화'
#FROM ANIMAL_INS 
#ORDER BY 1 ASC;

# 7차 시도 (CASE문)
SELECT ANIMAL_ID, NAME,
CASE 
WHEN (SEX_UPON_INTAKE LIKE '%NEUTERED%' OR SEX_UPON_INTAKE LIKE '%SPAYED%') 
THEN 'O' 
ELSE 'X' 
END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC

#아마 OR 뒤에만 적용되어서 if에 안걸림 
# -> 이걸 해결했으면 되는 문제

#오늘의 느낌표
# 너무 어렵게 생각했다. IF에 길게 OR 넣으면 되는 걸.
# 그래도 CASE문일 배워가서 좋다. 
# - IF를 여러개 사용하는법
# 중첩조건
# 다중조건 
# case문
# 참고 https://mentha2.tistory.com/102


#select *
#from animal_ins