SELECT EU.unique_id as unique_id, E.name as name
FROM Employees as E LEFT JOIN EmployeeUNI as EU
ON E.id = EU.id