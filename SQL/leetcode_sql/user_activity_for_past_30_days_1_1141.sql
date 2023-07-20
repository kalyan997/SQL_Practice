select A.activity_date as day, count(distinct A.user_id) as active_users
from Activity as A
where DATEDIFF('2019-07-27',A.activity_date)<30 and DATEDIFF('2019-07-27', activity_date)>=0
group by A.Activity_date