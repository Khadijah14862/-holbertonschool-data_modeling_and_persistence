SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN assignments AS a
ON c.id = a.course_id
GROUP BY c.id, c.title
HAVING COUNT(a.course_id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(a2.course_id) AS assignment_count
        FROM courses AS c2
        LEFT JOIN assignments AS a2
        ON c2.id = a2.course_id
        GROUP BY c2.id
    ) AS course_counts
)
ORDER BY course_title ASC;
