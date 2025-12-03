# Write your MySQL query statement below
SELECT class
FROM (SELECT class, count(class) AS C
      FROM Courses 
      GROUP BY class) AS T
WHERE T.C >= 5
