-- Write your code here
select e.name, p.project_name, d.department_name
from employees e
inner join assignments a on e.employee_id = a.employee_id
inner join projects p ON p.project_id = a.project_id
inner join departments d on p.department_id = d.department_id