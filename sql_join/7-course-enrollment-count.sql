SELECT c.title AS course_title,
       COUNT(e.student_id) AS enrollment_count
FROM courses AS c
LEFT JOIN enrollments AS e
ON c.id = e.course_id
GROUP BY c.id, c.title
ORDER BY enrollment_count DESC, course_title ASC;
