-- Write your code here
select s.name as student_name, c.class_name, t.name as teacher_name, 
    round(avg(g.score), 2) as average_grade
from students s
    left join classes c ON c.class_id = s.class_id
    left join teachers t ON t.teacher_id = c.teacher_id
    left join grades g ON g.student_id = s.student_id
group by student_name, c.class_name, teacher_name