select P.product_id, round(sum(U.units*P.price)/sum(U.units),2) as average_price
from Prices as P, UnitsSold as U
where P.product_id = U.product_iD and U.purchase_date between P.start_date and P.end_date
Group by P.product_id