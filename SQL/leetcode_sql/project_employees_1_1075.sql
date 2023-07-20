select P.project_id as project_id, round(avg(E.experience_years),2) as average_years
from Project as P, Employee as E
where P.employee_id = E.employee_id
group by P.project_id