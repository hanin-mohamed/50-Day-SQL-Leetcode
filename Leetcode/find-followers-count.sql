select user_id , count(followe_id) as follower_count
from followers
group by user_id
order by user_id