# Write your MySQL query statement below
select teacher_id, count(subject_id) as cnt
from(SELECT DISTINCT subject_id, teacher_id
FROM Teacher) as x
group by teacher_id 