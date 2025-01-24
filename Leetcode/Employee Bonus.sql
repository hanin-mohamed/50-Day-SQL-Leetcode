select e.name , b.bonus
from Employee e left join bouns b
on e.empId =b.empId 
where(b.bouns<1000) or b.bouns is null
