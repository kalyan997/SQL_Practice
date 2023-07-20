WITH cte1 AS (
    SELECT 'Low Salary' AS category_name, 0 AS category_cnt
    UNION ALL
    SELECT 'Average Salary', 0
    UNION ALL
    SELECT 'High Salary', 0
),
cte2 AS (
    SELECT account_id,
    CASE
        WHEN income < 20000 THEN 'Low Salary'
        WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
        ELSE 'High Salary'
    END AS category
    FROM Accounts
)
SELECT cte1.category_name AS category, COALESCE(COUNT(cte2.account_id), 0) AS accounts_count
FROM cte1
LEFT JOIN cte2 ON cte1.category_name = cte2.category
GROUP BY cte1.category_name;