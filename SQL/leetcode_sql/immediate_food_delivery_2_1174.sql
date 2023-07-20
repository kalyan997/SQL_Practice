With cte as
(
    select D.customer_id, min(D.order_date) as first_order_date
    from Delivery as D
    group by D.customer_id
)

select round(sum(if(C.first_order_date=D1.customer_pref_delivery_date,1,0))*100/count(distinct(C.customer_id)),2) as immediate_percentage
from Delivery as D1, cte as C
where D1.customer_id = C.customer_id and C.first_order_date = D1.order_date