-- Write your code here
select s.name, coalesce(c.class_name, 'Unassigned')
from students s
left join classes c ON c.class_id = s.class_id