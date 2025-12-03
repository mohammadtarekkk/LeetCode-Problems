# Write your MySQL query statement below
SELECT 
    COALESCE(MAX(num), NULL) AS num
FROM(SELECT max(num) AS num
FROM MyNumbers
GROUP BY num
HAVING count(num) = 1
ORDER BY max(num) DESC LIMIT 1) AS x