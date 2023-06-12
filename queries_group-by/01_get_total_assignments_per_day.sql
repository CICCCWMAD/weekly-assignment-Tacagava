SELECT a.day AS day, COUNT(*) AS total_assignments
FROM assignments a
JOIN assignment_submissions s ON a.id = s.assignment_id
GROUP BY a.day
ORDER BY a.day;
