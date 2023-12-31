SELECT Students.student_id, student_name, Subjects.subject_name, COUNT(Examinations.student_id) AS attended_exams
FROM (Students JOIN Subjects) LEFT JOIN Examinations ON (Students.student_id, Subjects.subject_name) = (Examinations.student_id, Examinations.subject_name)
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name
