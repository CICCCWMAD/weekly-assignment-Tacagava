SELECT students.name as student, SUM(assignment_submissions.time_duration) as total_time
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
GROUP BY students.name;
