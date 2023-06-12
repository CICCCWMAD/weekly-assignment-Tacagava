SELECT instructors.name, COUNT(assistance_requests.id) AS total_requests
FROM instructors
LEFT JOIN assistance_requests ON instructors.id = assistance_requests.instructor_id
WHERE instructors.name = 'Waylon Boehm'
GROUP BY instructors.name;
