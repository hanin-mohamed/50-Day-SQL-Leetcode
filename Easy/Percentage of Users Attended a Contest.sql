select r.contest_id , round((count(r.user_id)*100)/(select count(*) from users), 2 ) as percentage
from register r 
join users u
on u.user_id =r.user_id
group by contest_id 
order by  percentage desc ,  r.contest_id asc 