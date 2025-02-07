select  * from cinema where
cinema.description != "boring" AND
cinema.id %2!=0 
order by rating desc