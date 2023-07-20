select C.customer_id as customer_id
from Customer as C
group by C.customer_id
having count(distinct C.product_key) = (select count(product_key)
    from Product)