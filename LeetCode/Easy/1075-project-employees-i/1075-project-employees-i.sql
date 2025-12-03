# Write your MySQL query statement below
SELECT P.project_id, ROUND(AVG(E.experience_years), 2) AS average_years
FROM Project P
JOIN Employee E USING(employee_id)
GROUP BY P.project_id