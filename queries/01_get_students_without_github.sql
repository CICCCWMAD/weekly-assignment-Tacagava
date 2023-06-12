SELECT id, name, email, class_id
FROM students
WHERE github IS NULL OR github = ''
ORDER BY class_id;
