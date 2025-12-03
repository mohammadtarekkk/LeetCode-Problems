# Write your MySQL query statement below
SELECT DISTINCT R.contest_id, ROUND(COUNT(R.user_id)/(SELECT COUNT(user_id) FROM Users)*100, 2) AS percentage
FROM Users U
JOIN Register R USING(user_id)
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id 