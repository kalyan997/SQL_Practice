select R.contest_id, round(count(R.user_id)*100/TU.total_users,2) as percentage
from Register as R
cross join 
(select count(user_id) as total_users from Users) as TU
group by R.contest_id
order by percentage desc, R.contest_id