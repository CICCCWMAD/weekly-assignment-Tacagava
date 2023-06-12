SELECT instructors.name AS instructor_name, students.name AS student_name, assignments.name AS assignment_name,
       EXTRACT(EPOCH FROM (assistance_requests.completed_at - assistance_requests.started_at)) AS duration
FROM assistance_requests
JOIN instructors ON instructors.id = assistance_requests.instructor_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;
