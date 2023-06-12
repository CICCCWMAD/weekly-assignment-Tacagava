SELECT students.name AS student_name, students.email, classes.name AS class_name
FROM students
LEFT JOIN classes ON students.class_id = classes.id;



