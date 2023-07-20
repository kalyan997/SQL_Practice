WITH cte1 as
(SELECT visited_on, SUM(amount) as total_amount
FROM Customer
GROUP BY visited_on
ORDER BY visited_on),

cte2 as 
(SELECT visited_on, SUM(total_amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount, ROUND(AVG(total_amount) OVER( ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount
FROM cte1)

SELECT *
FROM cte2
WHERE visited_on >= (SELECT visited_on FROM Customer ORDER BY visited_on LIMIT 1) + 6
ORDER BY visited_on