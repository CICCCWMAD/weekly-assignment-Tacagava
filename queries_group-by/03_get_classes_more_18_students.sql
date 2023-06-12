SELECT c.name AS class_name, COUNT(*) AS total_students
FROM classes c
JOIN students s ON c.id = s.class_id
GROUP BY c.id, c.name
HAVING COUNT(*) >= 18
ORDER BY total_students ASC;
