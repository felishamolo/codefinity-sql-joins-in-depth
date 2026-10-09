-- Write your code here
select c.customer_id, c.name, o.amount
from customers c
left join orders o 
    ON o.customer_id = c.customer_id
order by c.customer_id, o.order_id