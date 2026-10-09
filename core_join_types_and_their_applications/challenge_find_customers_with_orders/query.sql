-- Write your code here
select distinct customers.name
from customers
inner join orders
on customers.customer_id = orders.customer_id