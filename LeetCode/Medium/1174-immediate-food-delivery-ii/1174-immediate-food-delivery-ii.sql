# Write your MySQL query statement below
select round((count(case when d.order_date = d.customer_pref_delivery_date then 1 END) / count(*)) * 100, 2) as immediate_percentage
from Delivery d
where d.order_date = (select min(order_date)
                        from Delivery
                        where customer_id = d.customer_id
                        )