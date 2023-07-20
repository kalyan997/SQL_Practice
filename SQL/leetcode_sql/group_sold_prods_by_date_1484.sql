select A.sell_date as sell_date, count(distinct A.product) as num_sold, group_concat(distinct A.product) as products
from Activities as A
group by A.sell_date
order by A.sell_date