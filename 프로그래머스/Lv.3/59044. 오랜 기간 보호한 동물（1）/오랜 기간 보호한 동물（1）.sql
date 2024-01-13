-- 코드를 입력하세요


SELECT i.name
     , i.datetime
FROM animal_ins i
LEFT JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE o.datetime is null
ORDER BY i.datetime ASC
LIMIT 3;

# 1. 처음엔 조인하고 입양안간 친구를 어떻게 분류할까 고민
# 2. 구글링으로 차집합 개념 (ON에 걸지, WHERE에 걸지 찾아봄)
# 3. LIMIT 안써서 틀림 (아침에 일어나서 다시 풀었다고해도 문제는 다시읽어라.)