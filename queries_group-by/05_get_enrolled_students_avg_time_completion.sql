SELECT s.name AS student_name, AVG(a.duration) AS average_time
FROM students s
JOIN assignment_submissions a ON s.id = a.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_time DESC;
