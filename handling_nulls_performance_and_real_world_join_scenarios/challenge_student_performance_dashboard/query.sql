-- Write your code here
select s.name as student_name, c.class_name, t.name as teacher_name, avg(g.score) as average_grade
from students s
left join classes c ON c.class_id = s.class_id
left join teachers t ON t.teacher_id = c.teacher_id
left join grades g ON g.student_id = s.student_id
group by s.name, c.class_name, t.name