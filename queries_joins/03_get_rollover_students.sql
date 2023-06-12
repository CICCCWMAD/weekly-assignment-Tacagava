SELECT students.student_name, classes.class_name, students.student_start_date, classes.class_start_date
FROM students
RIGHT JOIN classes ON students.student_start_date = classes.class_start_date;

