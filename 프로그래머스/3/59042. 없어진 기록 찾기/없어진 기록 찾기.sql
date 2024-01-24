SELECT o.animal_id
      ,o.name
FROM animal_ins i
RIGHT JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE i.animal_id IS NULL
ORDER BY o.animal_id;


# SELECT B.ANIMAL_ID, B.NAME
# FROM ANIMAL_INS AS A
# RIGHT JOIN ANIMAL_OUTS AS B 
# ON A.ANIMAL_ID = B.ANIMAL_ID
# WHERE A.ANIMAL_ID IS NULL