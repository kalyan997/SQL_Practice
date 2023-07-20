select E.employee_id as employee_id, 
case 
when count(E.department_id)=1 then E.department_id
when E.primary_flag = "Y" then E.department_id
else NULL
end as department_id
from Employee as E
group by E.employee_id
