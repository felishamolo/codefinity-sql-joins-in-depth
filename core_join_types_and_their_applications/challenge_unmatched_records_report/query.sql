-- Write your code here
select c.customer_id, c.name as customer_name, o.order_id, o.order_date,
    case when o.order_id is null then 'Customer without orders'
    when c.customer_id is null then 'Order without customer'
    else 'Matched'
    end as match_status
from customers c
full outer join orders o
    on c.customer_id = o.customer_id
order by
    case when c.customer_id is null or o.order_id is null then 0
    else 1
end
