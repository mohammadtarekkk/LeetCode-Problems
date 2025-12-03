# Write your MySQL query statement below
select query_name as query_name, round(sum(rating/position) /
 (select count(query_name) from Queries group by query_name having query_name = Q.query_name ), 2) as quality
 , round(((select count(rating) from Queries where query_name = Q.query_name and rating<3) /
  (select count(query_name) from Queries group by query_name having query_name = Q.query_name )) *100, 2) as poor_query_percentage
from Queries Q
where Q.query_name is not null
group by Q.query_name