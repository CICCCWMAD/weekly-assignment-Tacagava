SELECT assignments.day, COUNT(assignments.id) AS total_assignments, SUM(assignments.duration) AS total_duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;
