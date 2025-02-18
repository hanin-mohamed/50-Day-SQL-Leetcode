# Write your MySQL query statement belo
select s1.id, coalesce(s2.student,s1.student) as student
from seat s1
left join seat s2
on s1.id % 2 =1 and s1.id+1 = s2.id 
or (s1.id % 2 = 0 AND s1.id - 1 = s2.id)
