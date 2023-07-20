select C.employee_id as employee_id, C.name as name, count(E.employee_id) as reports_count, round(avg(E.age)) as average_age
from Employees as E, Employees as C
where E.reports_to = C.employee_id
group by C.employee_id
order by C.employee_id