SELECT i.name AS instructor_name
FROM instructors AS i
WHERE EXISTS (
    SELECT 1
    FROM courses AS c
    INNER JOIN registrations AS r
    ON c.id = r.course_id
    WHERE c.instructor_id = i.id
)
ORDER BY instructor_name ASC;
