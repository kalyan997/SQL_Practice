with cte1 as
(SELECT person_name,weight,turn,SUM(weight) over (order by turn) as total from Queue)
select person_name
from cte1
where total<=1000
order by total desc
limit 1