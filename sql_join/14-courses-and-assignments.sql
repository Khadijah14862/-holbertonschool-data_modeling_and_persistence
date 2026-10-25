SELECT c.title AS course_title, a.title AS assignment_title
FROM courses AS c
LEFT JOIN assignments AS a
ON c.id = a.course_id
ORDER BY course_title ASC, assignment_title ASC;
