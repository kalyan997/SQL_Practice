select S.product_id as product_id, S.year as first_year, S.quantity as quantity, S.price as price
from Sales as S
where (S.product_id, S.year) in 
(SELECT product_id, MIN(year) as year FROM Sales GROUP BY product_id)