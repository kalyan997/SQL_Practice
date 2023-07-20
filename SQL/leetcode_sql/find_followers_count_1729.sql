select F.user_id as user_id, count(F.follower_id) as followers_count
from Followers as F
group by user_id
order by user_id