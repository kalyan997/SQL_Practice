WITH CTE1 as
(SELECT student_id, student_name, subject_name
FROM Students, Subjects)

SELECT C.student_id as student_id, C.student_name as student_name, C.subject_name as subject_name, COUNT(E.subject_name) as attended_exams
FROM 
CTE1 AS C
LEFT JOIN Examinations E
ON C.student_id = E.student_id and C.subject_name = E.subject_name
GROUP BY C.student_id, C.subject_name
ORDER BY C.student_id, C.subject_name