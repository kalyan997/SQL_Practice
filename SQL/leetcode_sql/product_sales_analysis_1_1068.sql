SELECT P.product_name as product_name, S.year as year, S.price as price
FROM Sales as S LEFT JOIN Product as P
ON S.product_id = P.product_id