SELECT
  s.name AS student_name,
  AVG(a.duration) AS average_time,
  AVG(assignments.duration) AS average_estimated_time
FROM
  students s
JOIN
  assignment_submissions a ON s.id = a.student_id
JOIN
  assignments ON a.assignment_id = assignments.id
WHERE
  s.end_date IS NULL
GROUP BY
  s.name
HAVING
  AVG(a.duration) < AVG(assignments.duration)
ORDER BY
  average_time;
