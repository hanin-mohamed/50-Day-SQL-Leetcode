( select u.name as results 
 from users u
 join movieRating m 
 on u.user_id = m.user_id
 group by u.user_id, u.name
 order by count(m.movie_id) desc , u.name asc limit 1
 )
 union all

(
select ms.title as results
from movies ms
join movieRating m
on ms.movie_id = m.movie_id
where m.created_at between  '2020-02-01' and '2020-02-29'
group by ms.movie_id, ms.title
order by avg(m.rating) DESC, ms.title ASC
    LIMIT 1
);
