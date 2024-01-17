SELECT i.animal_id
       , i.name
       , i.datetime
       , o.datetime
       , DATEDIFF(o.datetime, i.datetime)
FROM animal_ins i
JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE o.datetime IS NOT NULL
GROUP BY i.animal_id
HAVING MAX(DATEDIFF(o.datetime, i.datetime))
ORDER BY i.datetime ASC
LIMIT 2 ;

SELECT i.animal_id
       , i.name
FROM animal_ins i
JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE o.datetime IS NOT NULL
ORDER BY DATEDIFF(o.datetime, i.datetime) DESC
LIMIT 2;