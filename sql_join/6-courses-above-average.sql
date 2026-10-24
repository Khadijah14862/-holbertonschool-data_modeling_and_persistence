SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN enrollments AS e
ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING COUNT(e.student_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(e2.student_id) AS enrollment_count
        FROM courses AS c2
        LEFT JOIN enrollments AS e2
        ON c2.id = e2.course_id
        GROUP BY c2.id
    ) AS course_counts
)
ORDER BY course_title ASC;
