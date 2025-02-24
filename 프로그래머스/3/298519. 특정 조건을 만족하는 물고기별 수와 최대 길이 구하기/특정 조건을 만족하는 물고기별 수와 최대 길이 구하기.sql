SELECT  COUNT(*) AS FISH_COUNT, MAX(LENGTH) AS MAX_LENGTH, FISH_TYPE 
FROM (
    SELECT ID, FISH_TYPE, IFNULL(LENGTH, 10) AS LENGTH
    FROM FISH_INFO
) F
    GROUP BY FISH_TYPE
    HAVING AVG(LENGTH)>=33
    ORDER BY FISH_TYPE