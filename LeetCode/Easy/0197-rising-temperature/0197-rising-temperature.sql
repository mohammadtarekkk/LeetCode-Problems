# Write your MySQL query statement below
select w2.id
from Weather as w
join Weather as w2
on datediff(w.recordDate, w2.recordDate ) = -1
and w2.temperature > w.temperature  