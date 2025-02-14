# Write your MySQL query statement below
select distinct l1.num as ConsecutiveNums 
from logs l1
join logs l2
join logs l3
on l1.num=l2.num and l2.num=l3.num and l3.id=l2.id-1 and l2.id=l1.id-1;


# window functions LAG/LEAD
select distinct num as ConsecutiveNums from (
    select num, 
           LAG(num) OVER (ORDER BY id) AS prev_num,
           LEAD(num) OVER (ORDER BY id) AS next_num
    FROM logs
) t
where num = prev_num and num = next_num;