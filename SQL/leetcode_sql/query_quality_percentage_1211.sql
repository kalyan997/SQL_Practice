select query_name, round(avg(Q.rating/Q.position),2) as quality, round(avg(if(Q.rating<3,1,0)),4)*100 as poor_query_percentage
from Queries as Q
group by Q.query_name