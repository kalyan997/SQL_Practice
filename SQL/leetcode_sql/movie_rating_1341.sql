with cte1 as
(
  select user_id, count(movie_id) as num_movies
  from MovieRating
  group by user_id
  order by num_movies DESC
), 
cte2 as(
  select M.movie_id as movie_id, avg(M.rating) as avg_rating
  from MovieRating as M
  where M.created_at like "2020-02-%"
  group by M.movie_id
)
(
select U.name as results
from cte1 as c, Users as U
where c.user_id = U.user_id
order by c.num_movies DESC, U.name
limit 1
)

Union ALL

(
  select M.title as results
  from cte2 as c, Movies as M
  where c.movie_id = M.movie_id
  order by c.avg_rating desc, M.title
  limit 1
)
