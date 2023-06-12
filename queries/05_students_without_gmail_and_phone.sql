SELECT *
FROM students
WHERE (email IS NULL OR email NOT LIKE '%@gmail.com') AND (phone IS NULL);
