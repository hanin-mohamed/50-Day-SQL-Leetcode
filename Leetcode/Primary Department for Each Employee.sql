# Write your MySQL query statement below
select employee_id , department_id from Employee e1
where primary_flag ='Y' 
or primary_flag ='N' 
and ( 
    select count(*) 
    from employee e2 
    where e1.employee_id = e2.employee_id )=1
 group by employee_id
