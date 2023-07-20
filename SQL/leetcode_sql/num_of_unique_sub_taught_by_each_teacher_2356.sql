select T.teacher_id as teacher_id, count(distinct T.subject_id) as cnt
from Teacher as T
group by T.teacher_id