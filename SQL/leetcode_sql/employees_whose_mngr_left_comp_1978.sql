select E.employee_id as employee_id
from Employees as E
where E.salary<30000 and 
E.manager_id not in 
(
    select employee_id
    from Employees
    where employee_id is not NULL
)
order by E.employee_id