elect U.user_id as user_id, 
concat(upper(substring(U.name,1,1)),lower(substring(U.name,2))) as name
from Users as U
order by user_id