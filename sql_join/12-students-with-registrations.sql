SELECT s.name AS student_name
FROM students AS s
WHERE s.id IN (
    SELECT r.student_id
    FROM registrations AS r
)
ORDER BY student_name ASC;
