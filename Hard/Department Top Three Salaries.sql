# Write your MySQL query statement below
select d.name as Department , EmpRank.name as Employee , Salary
from 
(select e.* , dense_Rank() 
over ( partition by e.departmentId order by e.salary desc)
    as rankId
from
employee  e
) EmpRank 
 join department d
on EmpRank.departmentId=d.id
where rankId<=3