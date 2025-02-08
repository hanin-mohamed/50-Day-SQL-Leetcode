//TLE
# Write your MySQL query statement below
select round(count(distinct a2.player_id)/count(distinct a1.player_id),2) as fraction
from activity a1
left join activity a2
on a1.player_id =a2.player_id
and a2.event_date = a1.event_date + interval 1 day
where a1.event_date=(
    select min(event_date)
    from activity a3
    where a3.player_id=a1.player_id
)


//ACC (Avoid Sub-Queries)
select round(count(distinct a2.player_id)/count(distinct a1.player_id),2) as fraction
from (select player_id , min(event_date) as first_login from activity group by player_id ) a1
left join activity a2
on a1.player_id =a2.player_id
and a2.event_date = a1.first_login + interval 1 day
