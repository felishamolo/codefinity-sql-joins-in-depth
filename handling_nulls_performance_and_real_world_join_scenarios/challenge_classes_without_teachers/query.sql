-- Write your code here
select c.class_id, class_name, coalesce(t.name, 'Unassigned') as teacher_name
from classes c
left join teachers t ON t.teacher_id = c.teacher_id