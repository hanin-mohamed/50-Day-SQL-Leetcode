
select product_id, 10 as price
from  Products
group by   product_id
having  min(change_date) > '2019-08-16'
UNION ALL
select  p1.product_id ,p1.new_price as price
from products p1 
join (
    select product_id,max(change_date) as last_changed
    from products
    where change_date <="2019-08-16"
    group by product_id
) p2
on p1.product_id =p2.product_id and p1.change_date = p2.last_changed;