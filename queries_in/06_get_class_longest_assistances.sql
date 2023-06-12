SELECT classes.name AS class_name, AVG(EXTRACT(EPOCH FROM (assistance_requests.completed_at - assistance_requests.started_at))) AS average_duration
FROM classes
JOIN students ON students.class_id = classes.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY classes.name
ORDER BY average_duration DESC
LIMIT 1;
