select s.student_id , s.student_name,su.subject_name , COUNT(e.student_id) AS attended_exams
from
 students s  cross join  subjects su
 left join examinations e 
on s.student_id = e.student_id And e.subject_name = su.subject_name
group by s.student_id , su.subject_name
order by  s.student_id , su.subject_name 