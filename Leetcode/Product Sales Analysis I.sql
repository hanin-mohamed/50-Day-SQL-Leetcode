select p.product_name , s.year, s.price
from sales s Left join product p 
On s.product_id = p.product_id