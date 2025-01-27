select e1.employee_id from employees e1
where e1.manager_id IS NOT NULL
and e1.manager_id NOT IN (SELECT employee_id FROM employees)
and e1.salary<30000
order by e1.employee_id