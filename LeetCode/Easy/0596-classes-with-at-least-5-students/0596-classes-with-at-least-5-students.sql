# Write your MySQL query statement below
select class
from (select class, count(class) as C
      from Courses 
      group by class) as T
where T.C >= 5
