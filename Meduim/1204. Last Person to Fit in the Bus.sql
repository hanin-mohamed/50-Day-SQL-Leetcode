# Write your MySQL query statement below
select person_name
 from (
    select person_name, sum(weight)OVER (order by turn) as total
    from queue 
    
)q
where q.total<=1000
order by total desc
limit 1;