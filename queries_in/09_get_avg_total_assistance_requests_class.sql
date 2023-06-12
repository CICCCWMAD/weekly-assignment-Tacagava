SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT classes.name AS class_name, SUM(EXTRACT(EPOCH FROM (assistance_requests.completed_at - assistance_requests.started_at))) AS total_duration
  FROM classes
  JOIN students ON students.class_id = classes.id
  JOIN assistance_requests ON assistance_requests.student_id = students.id
  GROUP BY classes.name
) AS subquery;
