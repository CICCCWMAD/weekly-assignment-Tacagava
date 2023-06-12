SELECT students.name AS student_name, students.email, classes.name AS class_name
FROM students
INNER JOIN classes ON students.class_id = classes.id;



