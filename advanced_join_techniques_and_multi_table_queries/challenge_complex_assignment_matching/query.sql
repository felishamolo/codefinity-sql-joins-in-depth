-- Write your code here
select a.assignment_id, e.name as employee_name, p.project_name, d.department_name
from employees e
join assignments a ON a.employee_id = e.employee_id
join projects p ON p.project_id = a.project_id
join departments d ON d.department_id = p.department_id