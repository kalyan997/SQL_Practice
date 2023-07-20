select P.product_name as product_name, sum(F.unit) as unit
from Orders as F, Products as P
where P.product_id = F.product_id and  F.order_date between '2020-02-01' and '2020-02-29'
group by F.product_id
having sum(F.unit)>=100