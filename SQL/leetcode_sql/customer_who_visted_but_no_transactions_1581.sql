select V.customer_id as customer_id, count(customer_id) as count_no_trans
from Visits as V left join Transactions as T
on V.visit_id = T.visit_id
WHERE T.transaction_id is NULL
GROUP BY V.customer_id