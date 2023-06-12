SELECT students.class_name as class, count(assignment_submissions.*) as total_time
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.class_name;


