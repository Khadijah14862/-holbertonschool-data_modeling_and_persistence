SELECT s.name AS student_name, c.title AS course_title
FROM students AS s
INNER JOIN registrations AS r
ON s.id = r.student_id
INNER JOIN courses AS c
ON r.course_id = c.id
ORDER BY student_name ASC, course_title ASC;
