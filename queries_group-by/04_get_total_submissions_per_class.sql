SELECT c.name AS class_name, COUNT(*) AS total_submissions
FROM classes c
JOIN students s ON c.id = s.class_id
JOIN assignment_submissions a ON s.id = a.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;
